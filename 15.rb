class String
  def tail(n)
    self.split("\n")[-n..-1].join("\n")
  end
end

fname = ARGV[0]
n = ARGV[1].to_i
File.open(fname) {|f| puts f.read.tail(n)}
