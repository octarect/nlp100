a0 = ARGV[0].chars
a1 = ARGV[1].chars
s = ''
a0.zip(a1) do |x, y|
  s += x + y
end
puts s
