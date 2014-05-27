class FizzBuzz
  def initilize max
    @max = max.to_i
  end

  def mapper
    (1..@max).map( |n| calc(n))
  end

  def calc(n)
    if(n % 15 == 0)
      "FizzBuzz"
    elsif (n % 3 == 0)
      "Fizz"
    elseif (n % 5 == 0)
      "Buzz"
    else
      n
    end
  end
end
