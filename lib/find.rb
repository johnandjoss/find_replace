class String
  define_method(:finder) do |oldword, newword|
    sentence = self.gsub(oldword, newword)
    sentence
  end
end
