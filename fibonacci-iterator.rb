#! ruby
# frozen_string_literal: true

# def fibconacci(n)
#  result = []
#  0.upto(n) do |i|
#   if i == 0
#     result << 0
#   elsif i == 1
#     result << 1
#   else
#     fib = result[i - 1] + result[i - 2]
#     result << fib
#   end
#  end
#  result
# end

def fibconacci(n)
  result = []
  for i in 0..n
   if i.zero?
     result << 0
   elsif i == 1
     result << 1
   else
     fib = result[i - 1] + result[i - 2]
     result << fib
   end
  end
  result
end

# def fibconacci_rec(n)
#   return [0] if n == 0
#   return [0, 1] if n == 1

#   result = fibconacci_rec(n - 1)

#   result << result[-2] + result[-1]
# end

def fibconacci_rec(n)
  return [0] if n.zero?
  return [0, 1] if n == 1

  result = fibconacci_rec(n - 1)

  result << result[-2] + result[-1]
end

p fibconacci(8)
p fibconacci_rec(8)
