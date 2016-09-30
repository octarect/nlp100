def typoglycemia(s)
  compress = lambda{|w| w[0] + w[1..-2].chars.shuffle.join + w[-1]}
  s.split.map{|w| if w.length > 4 then compress[w] else w end}.join(' ')
end
puts typoglycemia(ARGV[0])
