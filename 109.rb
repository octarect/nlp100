def typoglycemia(s)
  s.split.map do |w|
    if w.length > 4
      w[0] + w[1..-2].chars.shuffle.join + w[-1]
    else
      w
    end
  end.join(' ')
end

puts typoglycemia(ARGV[0])
