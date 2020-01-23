
# report.py (for Python 2 and 3)

# Read a Gurobi LP file, optimize it, & write a Lindo-style report

# Author: John Baugh (jwb@ncsu.edu)
# Version: 0.96

# LP format
#   http://www.gurobi.com/documentation/8.1/refman/lp_format.html

# Attributes:
#   http://www.gurobi.com/documentation/8.1/refman/attributes.html

from __future__ import print_function     # Python 2 and 3

import gurobipy
import os, sys, time

renumber = True                           # number rows from 1 instead of 0

def solve(infile):
    print('Reading ' + infile)
    m = gurobipy.read(infile)             # read a model in .lp format
    m.ModelName = infile                  # make its name the filename
    m.optimize()                          # optimize it
    echo_model(m)                         # echo it to a .log file
    lindo(m)                              # write results to the .log file

def reinstall_as_lp(m):
    int_constraints = dict()              # add integer constraints
    for v in m.getVars():
        if v.getAttr('VType') in ['B', 'I']:
            v.vtype = gurobipy.GRB.CONTINUOUS  # make integer vars real
            v.ub = gurobipy.GRB.INFINITY       # with no upper bound
            int_constraints[v.VarName] = m.addConstr(v == v.X)
    with open(outfile(m), 'a') as f:
        f.write('\n RE-INSTALLING BEST SOLUTION...\n')
    m.optimize()                      # now re-solve as a pure LP
    return int_constraints

# echo the model formulation
def echo_model(m):
    m.write('temp.lp')
    print('Writing ' + outfile(m))
    copy_file('temp.lp', outfile(m))
    os.remove('temp.lp')

# create a filename for output files by using a '.log' extension (default)
def outfile(m, new_extension='.log'):
    name, ext = os.path.splitext(m.ModelName)
    return name + new_extension

# copy a file that has an LP formulation, but renumber rows in the process
def copy_file(i, o):
    with open(i) as fi:
        with open(o, "w") as fo:
            for s in fi:
                if len(s) > 6 and s[0:2] == ' R':
                    sa = s.split()
                    if len(sa[0]) > 0:
                        cnum = str(int(sa[0][1:-1]) + 1)
                        fo.write(' ' + cnum + ':')
                        for x in sa[1:]:
                            fo.write(' ' + x)
                        fo.write('\n')
                else:
                    fo.write(s)

# write a Lindo style report
def lindo(m, mode='a'):
    int_constraints=dict()                # empty for an LP
    if m.Status == 2 and m.isMIP == 1:    # convert IP to LP and re-solve
        int_constraints = reinstall_as_lp(m)
    with open(outfile(m), mode) as f:     # write a standard report
        f.write('\nreport.py v.0.96 output from %s at %s:\n' % \
                (m.ModelName, time.strftime('%I:%M %p on %m/%d/%Y')))
        if m.Status == 4:                 # infeasible or unbounded
            m.params.DualReductions = 0
            m.optimize()                  # resolve to figure out which it is
        if m.Status == 2:                 # optimal
            write(f, m, int_constraints)
        elif m.Status == 3:               # infeasible
            m.computeIIS()
            m.write(outfile(m, '.ilp'))
            print('File %s written to help identify source of infeasibility' % \
                outfile(m, '.ilp'))
        else:                             # other than optimal or infeasible
            f.write('\n%s\n\n' % codes[m.Status])

fmt = ' %9s %16.8g %17.8g\n'
fmt2 = ' %8s %15.8g %16.8g %16.8g\n'

def write(f, m, int_constraints):
    f.write('\n        OBJECTIVE FUNCTION VALUE\n\n')
    f.write(' %9s %13.8g\n\n' % ('0)', m.ObjVal))
    f.write('  VARIABLE        VALUE          REDUCED COST\n')
    for v in m.getVars():
        value = v.X
        if value == 0.0:               # remove "negative" zeros
            value = 0.0
        if v.VarName in int_constraints:
            rc = int_constraints[v.VarName].getAttr('PI')
        elif m.isMIP:
            rc = 0
        else:
            rc = v.getAttr('RC')
        if rc == 0.0:                  # remove "negative" zeros
            rc = 0.0
        if rc != 0 and v.VarName not in int_constraints: # Lindo sign convention
            rc = m.ModelSense * rc
        f.write(fmt % (v.VarName, value, rc))
    f.write('\n       ROW   SLACK OR SURPLUS     DUAL PRICES\n')
    for c in m.getConstrs():
        if c not in int_constraints.values():
            slack = c.getAttr('Slack')
            if slack == 0.0:               # remove "negative" zeros
                slack = 0.0
            if slack != 0 and c.getAttr('Sense') == '>':
                slack = -slack             # Lindo sign convention
            if m.isMIP:
                dp = 0
            else:
                dp = c.getAttr('PI')
            if dp == 0.0:                  # remove "negative" zeros
                dp = 0.0
            if dp != 0:                    # Lindo sign convention
                dp = -m.ModelSense * dp
            f.write(fmt % (constr_name(c) + ')', slack, dp))
    f.write('\n NO. ITERATIONS=%8d\n\n' % m.IterCount)
    if len(int_constraints) == 0 and not m.isMIP:
        f.write(' RANGES IN WHICH THE BASIS IS UNCHANGED:\n\n')
        f.write('                           OBJ COEFFICIENT RANGES\n')
        f.write(' VARIABLE         CURRENT        ALLOWABLE        ALLOWABLE\n')
        f.write('                   COEF          INCREASE         DECREASE\n')
        for v in m.getVars():
            coef = v.getAttr('Obj')
            up = num_or_infinity(v.getAttr('SAObjUp'))
            low =  num_or_infinity(v.getAttr('SAObjLow'))
            f.write(fmt2 % (v.VarName, coef, up - coef, coef - low))
        f.write('\n                           RIGHTHAND SIDE RANGES\n')
        f.write('      ROW         CURRENT        ALLOWABLE        ALLOWABLE\n')
        f.write('                    RHS          INCREASE         DECREASE\n')
        for c in m.getConstrs():
            rhs = c.getAttr('RHS')
            up = num_or_infinity(c.getAttr('SARHSUp'))
            low =  num_or_infinity(c.getAttr('SARHSLow'))
            f.write(fmt2 % (constr_name(c), rhs, up - rhs, rhs - low))

# so that constraints are numbered starting at 1 instead of 0
def constr_name(c):
    s = c.getAttr('ConstrName')
    if renumber and s[0] == 'R' and s[1:].isdigit():
        return str(int(s[1:]) + 1)
    else:
        return s

def num_or_infinity(x):
    if x == gurobipy.GRB.INFINITY:
        return float('inf')
    elif x == -gurobipy.GRB.INFINITY:
        return float('-inf')
    return x

codes = {1: 'LOADED', 2: 'OPTIMAL', 3: 'INFEASIBLE', 4: 'INF_OR_UNBD',
         5: 'UNBOUNDED', 6: 'CUTOFF', 7: 'ITERATION_LIMIT', 8: 'NODE_LIMIT',
         9: 'TIME_LIMIT', 10: 'SOLUTION_LIMIT', 11: 'INTERRUPTED',
         12: 'NUMERIC', 13: 'SUBOPTIMAL', 14: 'INPROGRESS'}

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('usage: gurobi.sh report.py file.lp [file2.lp ...]')
    else:
        for i in range(1, len(sys.argv)):
            solve(sys.argv[i])
