

#flicks problem
'''state=True
Lists=['apple','flick','xyz']
result=[]
for list in Lists:
    if list=='flick':
        state=False
        result.append(state)
    else:
        result.append(state)
print(result)'''

#Dictionary problem
'''items={
    'name':'Laxmi',
    'age':21,
    'Department':'Data Science'
}

print(items)'''

#show any specific key value of dictionary
'''items={
    'name':'Laxmi',
    'age':21,
    'Dept.':'Data Science',
    'status':True
}
print(items['status'])'''

#valid Braces

string="(){}[]"
def valid_braces(string):
    pair= {')': '(', ']': '[', '}': '{'}  # closing -> matching opening
    stack = []

    for char in string:
        if char in '([{':
            stack.append(char)
        else:
            # closing bracket with nothing open, or the wrong one open
            if not stack or stack.pop() != pair[char]:
                return False

    # anything left over was opened but never closed
    return not stack
