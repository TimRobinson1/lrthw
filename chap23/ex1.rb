# Chapter 23 from Learn Ruby the Hard Way suggests pulling a ruby file from an online hub and examining it.  This file was retrieved from github.com/Duke-PL-Course/Ruby/blob/master/assignments/q1-fib.rb

# Function called fib
def fib(n, n1 = 1, n2 = 1)
  # If statements.  Unfamiliar with them in Ruby, but familiar with the general concept of the logic statement.
  if n <= 2
    [0, n1, n2][n]
  else
    ans = nil
    # Have not seen the 'do' command before.  Research suggests that do is for larger, slightly more complex lines of workings out.
    (n-2).times do
      ans = n1 + n2
      n1 = n2
      n2 = ans
    end
    ans
  end
end

def fibInject(n, n1 = 1, n2 = 1)
  if n <= 2
    # Appears to be an array.  Not familiar with arrays in Ruby, but in Javascript.
    [0, n1, n2][n]
  else
    ([nil].cycle.take(n-2).inject([n1, n2]) do |prev, x|
      prev.drop(1).push(prev[0] + prev[1])
    end).last
  end
end

def fibRecursive(n, n1 = 1, n2 = 1)
  if n <= 2
    seed = [0, n1, n2]
    seed[n]
  else
    fibRecursive(n-1, n1, n2) + fibRecursive(n-2, n1, n2)
  end
end

def fibTailRecursive(n, n1 = 1, n2 = 1)
  return n1 if n <= 1
  return n2 if n == 2
  return fib(n - 1, n2, n1 + n2)
end

def fibIt(n, n1 = 1, n2 = 1)
  (2..n).each {
    n1, n2 = n2, n1 + n2
  }
  return n1
end

def fibItLoop(n, n1 = 1, n2 = 1)
  for i in 2..n
    n1, n2 = n2, n1 + n2
  end
  return n1
end
