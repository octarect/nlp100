require 'bundler/setup'
require 'ngram'

bigram = NGram.new({
  :size => 2,
  :word_separator => ' ',
  :padchar => '_'
})

x = bigram.parse(ARGV[0]).flatten
y = bigram.parse(ARGV[1]).flatten

puts "2単語のbigramの和差積:"
puts "  和: #{x | y}"
puts "  積: #{x & y}"
puts "  差: #{x - y}"

puts "whether if it includes 'se':"
puts "x: #{x.include? 'se'}"
puts "y: #{y.include? 'se'}"
