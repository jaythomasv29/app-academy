# Get factorial using recursion

def factorial(num)
  return num if num == 1
  num *= factorial(num - 1)
end

p factorial(1)
