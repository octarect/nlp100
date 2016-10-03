f0 = ARGV[0]
f1 = 'col1.txt'
f2 = 'col2.txt'
c1 = []
c2 = []

File.open(f0).each_line do |s|
  arr = s.split("\t")
  c1.push arr[0]
  c2.push arr[1]
end

File.open(f1, 'w').write c1.join("\n")
File.open(f2, 'w').write c2.join("\n")
