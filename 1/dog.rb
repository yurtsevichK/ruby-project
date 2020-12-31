class Dog

  def voice
    p 'gav'
  end
  def self.voice
    p 'class gav'
  end
end

dog = Dog.new
dog.voice

Dog.voice