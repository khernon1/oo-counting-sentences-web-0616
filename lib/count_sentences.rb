require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
     self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!")
  end

 def count_sentences
    #need to split by each punctuation character.
    #use an is included in alphabet? array
    #change everything not in nums, alphabet, or space into a new word (BREAK)
    #split by BREAK
    self.split(" ").each_with_object(count=0) do |word|
      if word.end_with?("?", ".", "!")
        count += 1
      end      
    end 
    count
end

end