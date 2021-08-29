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
    count= 0
    word_count= self.split(" ")
    word_count.each do |n|
      if n.question? || n.sentence? || n.exclamation?
        count += 1
      end
    end
    puts "There are #{count} sentences!"
    count
  end
end


hello= String.new("This is a string! It has three sentences. Right?")
hello.count_sentences
# puts "Who are you?".split(" ")
# binding.pry

