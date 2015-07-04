require 'pry'
class NATO
  include Enumerable

  def encode
    @word.split("").each {|l| puts ALPHA[l.to_sym]}
  end

  def decode
    inverted_hash = ALPHA.invert
    word_array = @sentence.split
    word_array.each { |word| puts inverted_hash[word] }
  end


  ALPHA = {a: "alpha", b: "beta", c: "charlie", d: "delta", e: "echo",
           f: "frank", g: "gamma", h: "horse", i: "indigo", j: "jones",
           k: "kappa", l: "lamb", m: "mary", n: "nonna", o: "ovary", p: "parrish",
           q: "quarry", r: "rose", s: "steve", t: "tuff", u: "under", v: "vick",
           w: "win", x: "xoxo", y: "year", z: "zip"}


  def run!
    puts "Give me a word user, and I'll encode it: "
    @word = gets.chomp.downcase
    self.encode
    puts "Now give me a sentence, and I'll decode it: "
    @sentence = gets.chomp.downcase
    self.decode
  end

end

game = NATO.new
game.run!
