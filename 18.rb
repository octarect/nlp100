f = ARGV[0]
i = ARGV[1].to_i - 1

arr = File.open(f).read.split("\n").map{|s| s.split("\t")}.sort{|a, b| a[i].to_f}
puts arr.map{|a| a.join("\t")}
