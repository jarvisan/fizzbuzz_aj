require 'fizzbuzz_aj'
fizzer = FizzBuzz.new(45)
fmats = Formats.new(fizzer.mapper)
puts fmats.as_html
puts fmats.as_json
puts fmats.as_plain
