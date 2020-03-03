import os

email = input("input your email: ")
series = input("input homework series: ")
problems_input = input('input problem numbers: ')
problems = problems_input.split()

for problem in problems:
    p = problem.split(".")
    name = f"{email}_hw_{series}_{p[0]}_{p[1]}.py"
    if not os.path.exists(name):
        with open(name, 'w'): pass