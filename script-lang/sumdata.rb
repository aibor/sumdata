#!/usr/bin/ruby

sum_original = 0
sum_compressed = 0

File.open(ARGV[0]) do |f|
  while line = f.gets
    original, compressed = line.split[4,5]

    sum_original += original.to_i
    sum_compressed += compressed.to_i
  end
end

puts "Original size #{sum_original} kb"
puts "Original size #{sum_compressed} kb"
