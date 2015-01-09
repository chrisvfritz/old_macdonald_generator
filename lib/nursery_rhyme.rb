class NurseryRhyme

  def initialize(args={})
    @number_of_verses = [ 1, args[:number_of_verses].to_i ].max
  end

  def lyrics
    [opening, verses, closing].map do |section|
      section.join "\n"
    end.join "\n"
  end

private

  def opening
    [""]
  end

  def verse
    [""]
  end

  def closing
    [""]
  end

  def verses(verse_args={})
    Array.new(@number_of_verses) { verse }
  end

end
