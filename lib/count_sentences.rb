require 'pry'

class String

  def sentence?
    if self.end_with?('!') || self.end_with?('?') || self.end_with?('.')
      true
    else
      false
    end
  end

  def question?
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    #binding.pry
    counter = 0
    last_char = ''
    self.each_char do |char|
      if (char == '!' || char == '?' || char == '.')
        counter += 1
      end
      if ((char == '!' || char == '?' || char == '.') && char == last_char)
        counter -= 1
      end
      last_char = char
      #binding.pry
    end
    counter
  end
end
