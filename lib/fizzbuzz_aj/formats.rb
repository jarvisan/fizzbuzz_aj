require 'json'
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
