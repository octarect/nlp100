require "json"

class String
  def match_all(reg)
    ret = []
    str = self

    until str.nil?
      m = str.match(reg)
      unless m.nil?
        for i in 1..(m.length-1)
          ret.push m[i]
        end
        str = m.post_match
      else
        break
      end
    end
    ret
  end
end

# Constant value
key_title = "title"
key_article = "text"

# Usage: command [filename] [title]
fname = ARGV[0]

data = []
File.foreach(fname) do |line|
  d = JSON.parse(line)
  cs = d[key_article].match_all(/(=+)\s+(.+)\s+(=+)/)
  until cs.empty?
    puts "Lv:#{cs.shift.length} #{cs.shift}"
    cs.shift
  end
end
