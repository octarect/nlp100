input = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
h = {}
input.split.each.with_index(1) do |s, i|
  if [1, 5, 6, 7, 8, 9, 15, 16, 19].include? i
    h[s[0]] = i
  else
    h[s[0..1]] = i
  end
end
puts h
