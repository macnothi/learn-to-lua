-- ex 1.6

myBoolean=false
myNumber=2.0

print (myBoolean and myBoolean)
myBoolean=true
print (myBoolean and myBoolean)

print (myNumber and myNumber)
print (myNumber or myNumber)

if not myNumber then
    print('ja')  
end

-- ex 1.7
x=false ; y=false ; z= true
print(x and y and not z or not y and x)
print(((x and y) and (not z)) or ((not y) and x))
-- parentheses not required, but useful

-- ex 1.8
print('my name is "',arg[0],'"' )
