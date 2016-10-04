
f0 = ARGV[0]
f1 = ARGV[1]
sp = "\t"
unless ARGV[2].nil?
  sp = ARGV[2]
end

a0 = File.open(f0).read.split
a1 = File.open(f1).read.split
puts a0.zip(a1).map{|p| p.join(sp)}
