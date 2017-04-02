require "json"

# Constant value
key_title = "title"
key_article = "text"

# Usage: command [filename] [title]
fname = ARGV[0]
title = ARGV[1]

# Load data converted ruby object from JSON
data = {}
File.foreach(fname) do |line|
  d = JSON.parse(line)
  data[d[key_title]] = d
end

# Print article of the title you specified
if data.has_key? title
  puts data[title][key_article]
else
  puts "Oops... The title you specified is not found. Aborting."
end
