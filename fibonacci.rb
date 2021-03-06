# iterative function that returns fibonacci to the nth position (starting with 0)
def fib(n, x = 0, y = 1, z = 0, answer = [])
  if n == 0
    answer  << n
  elsif n == 1
    answer = [0, 1]
  else
    (n+1).times do
      answer << z
      z = (x + y);
      x = z;
      y = z - y;
    end
  end
  return answer.join(", ")
end

puts "Iterative fibs:"
puts fib(8)
puts fib(0)
puts fib(1)
puts fib(15)

# above function, but done recursively
def fibs_rec(n, x = 0, y = 1, z = 0, answer = [])
  if n == 0
    answer << n
  elsif n == 1
    answer = [0, 1]
  elsif  answer.length <= n
      answer << z
      z = (x + y);
      x = z;
      y = z - y;
     fibs_rec(n, x, y, z, answer)
  end
  return answer.join(", ")
end

puts "Recursive fibs:"
puts fibs_rec(8)
puts fibs_rec(0)
puts fibs_rec(1)
puts fibs_rec(15)
