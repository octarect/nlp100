def tab_to_space(s)
  s.gsub /\t/, ' '
end

fname = ARGV[0]
File.open(fname) {|f| puts tab_to_space f.read}
