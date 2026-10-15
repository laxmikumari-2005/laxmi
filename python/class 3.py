#Sum of two elements from ascending ordered list
num=[12,31,3,6]
num.sort()       #when we use only sort() then the code will return  none
print(num)
sum=num[0]+num[1]
print("sum:",sum)

#another solution
num=[12,31,3,6]
def sum_of_two(num):
  ordered=sorted(num)
  return ordered[0]+ordered[1]
print(sum_of_two(num))
print(num)
num1=num.sort() # if we are sortingin new list still getting none
print(num1)
