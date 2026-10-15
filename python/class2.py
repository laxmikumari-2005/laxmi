#jaden casing
string="My name is john"
word=string.split()
words=[word[0].upper() + word[1:] for word in word]
print(' '.join(words))
  

#remove vowels,capital or small alphabetical letters
users="Hello ,My Name is John Abraham,i am an actor"
result=[]
for user in users:
    if user not in 'aeiouAEIOU':
        result.append(user)
finalstring="".join(result)
print(finalstring)