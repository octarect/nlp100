f = ARGV[0]
i = ARGV[1].to_i - 1

d = File.open(f).read.split("\n").map {|s| s.split("\t")}
keycnt = d.map {|a| a[i]}.sort.slice_when(&:!=).map {|x| [x.first, x.size]}
h = Hash[keycnt]
d2 = d.map {|a| a << "#{h[a[i]]}#{a[i]}"}
res = d2.sort_by {|a| a.last}.reverse.map {|a| a[0..a.length-2].join("\t")}
puts res
