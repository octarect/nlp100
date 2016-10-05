class String
  def head(n)
    self.split("\n")[0..n-1].join("\n")
  end
end

fname = ARGV[0]
n = ARGV[1].to_i
File.open(fname) {|f| puts f.read.head(n)}
