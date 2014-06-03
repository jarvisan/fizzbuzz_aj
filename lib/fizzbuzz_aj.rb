require 'json'

class FizzBuzz
  def initialize max
    @max = max.to_i
  end

  def mapper
    (1..@max).map{ |n| calc(n) }
  end

  def calc(n)
    if(n % 15 == 0)
      "FizzBuzz"
    elsif (n % 3 == 0)
      "Fizz"
    elsif (n % 5 == 0)
      "Buzz"
    else
      n
    end
  end
end

class Formats
  def initialize ary
    @ary = ary
  end

  def format_as fmt
    if(fmt == "html")
      as_html
      elseif (fmt == "json")
      as_json
    else
      as_plain
    end
  end

  def as_plain
    @ary.join(", ")
  end

  def as_json
    @ary.to_json
  end

  def as_html
    <<-EOF
      #{@ary.map { |d| "<li>#{d}</li>"}.join("\n\t")}
    EOF
  end
end