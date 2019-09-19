import math

Userinput = input("input num....")

prime_Number = [2,3,5,7]

for a in range(3,Userinput):
    prime_Number.append(0)

br = True;

print (prime_Number)

i = 4
x = 10
while prime_Number[Userinput-1] == 0:
    index = 2


    while index < x:
        if x % index == 0:

            br = False
            break
        else :
            index +=1

    if br == True :
        print (x)
        print (" = prime")
        prime_Number[i] = x
        i +=1
    else :
        print (x)
        print (" != prime")

    x+=1


print (prime_Number)
print (prime_Number[Userinput-1]);
