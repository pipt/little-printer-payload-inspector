require 'chunky_png'

data = ARGF.read

s = ""
data.each_byte {|x| s << x.to_i.to_s(2).rjust(8, "0")}
s.reverse!

png = ChunkyPNG::Image.new(384, (s.length / 384) + 1, ChunkyPNG::Color::WHITE)

s.each_char.each_slice(384).with_index do |row, y|
  row.each_with_index do |pixel, x|
    if pixel == "1"
      png[x, y] = ChunkyPNG::Color::BLACK
    end
  end
end

png.save("blah.png")
