def cipher(s)
  s.bytes.map do |b|
    if (97..122).cover? b
      (219 - b).chr
    else
      b.chr
    end
  end.join
end

puts cipher(ARGV[0])
