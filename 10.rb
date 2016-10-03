def count_line(s)
  s.split("\n").length
end

fname = ARGV[0]
File.open(fname) do |f|
  puts count_line(f.read)
end
