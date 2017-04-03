require "json"

# Constant value
key_title = "title"
key_article = "text"

# Usage: command [filename] [title]
fname = ARGV[0]

data = []
File.foreach(fname) do |line|
  d = JSON.parse(line)
  m = d[key_article].match(/\[\[Category:(.*)\]\]*/)
  unless m.nil?
    puts m[1]
  end
end
