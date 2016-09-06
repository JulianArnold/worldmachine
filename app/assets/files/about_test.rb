=begin
lines = []

file = File.open("./about.txt", "r")

while  (line = file.gets)
  lines << line
end
file.close

lines.each { |l| puts l}
=end
