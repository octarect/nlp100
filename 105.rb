require 'bundler/setup'
require 'ngram'

bigram = NGram.new({
  :size => 2,
  :word_separator => ' ',
  :padchar => '_'
})

puts bigram.parse(ARGV[0])
