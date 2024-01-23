def normal_calculator(x, y, operator)
  case operator
  when "+"
    return x + y
  when "-"
    return x - y
  when "/"
    return x.to_f / y
  when "*"
    return x * y
  else
    return "Invalid Operator!"
  end
end

def yield_calculator(x, y)
  if block_given?
    yield(x, y)
  else
    normal_calculator(x, y, "+") # Retorna
  end
end

# Comportamento do yield "Traduzido"
# def yield_calculator(5, 7) do |5, 7|
#   5 * 7
# end

puts "====== YIELD CALCULATOR ======="
puts yield_calculator(5, 7) { |x, y| x * y }
puts yield_calculator(5, 7) { |x, y| x + y }
puts yield_calculator(5, 7) { |x, y| x.to_f / y }
puts yield_calculator(5, 7) { |x, y| x - y }
puts yield_calculator(5, 7) { |x, y| x % y }
puts yield_calculator(5, 7)

puts "====== NORMAL CALCULATOR ======="
puts normal_calculator(5, 7, "*")
puts normal_calculator(5, 7, "-")
puts normal_calculator(5, 7, "+")
puts normal_calculator(5, 7, "/")
puts normal_calculator(5, 7, "%")
