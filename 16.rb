n = ARGV[0].to_i
fname = ARGV[1]
o_prefix = ARGV[2]

arr = File.open(fname).read.split("\n")
m = arr.length / n 
outs = Array(0..(n-1)).map {|i| File.new("#{o_prefix}.#{i}", 'w')}
arr.each.with_index(0) {|s, i| outs[i / m].puts s}
