s0 = ARGV[0]
s1 = ""
for i in 0..(s0.length/2-1) do
  s1 = s1 + s0[2*i+1]
end
puts s1
