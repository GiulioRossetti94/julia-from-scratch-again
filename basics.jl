x = 4 
println(x +2)

##
a = 3
b = a + 1
c = b * a
println(c)  # should print 12

## 
x1 = 6
x2 = x1 /2
x3 = x1
x4 = x3 + x2
println(x4) # should print 9

##
typeof(5)
typeof(true)
typeof("this is a string")
typeof('a')
#typeof('is this allowed?') nope

##
z = 6.5
println(z % 4)
quotients1 = [2,4,8]
quotients2 = (2,4,8)
map( x -> z % x, quotients1)
map( x -> z % x, quotients2)

#
q = !true
x,y = 4,5
x
y
x == y
x != y 
x > y
x < y

# if statements
x,y = 6,5
if x > y 
    println("x is greater than y")
elseif x < y 
    println("x is less than y")
else
    println("x is equal than x")
end

x1,x2 = 4, 6.5

if x1 > 1 || (x2 < 3 || x1 >6)  
    println("it's complicated \n \tmyfriend ")
else
    println(" \nnot that \tbad")
end

# functions

function f(a,b)
    a + b
end

f(a,b) = a + b + 1

