input = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
cnt = input.split.map {|s| s.length}
p cnt.sort
