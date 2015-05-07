puts "Please enter a word: "

my_hash = {a: "alpha", b: "beta", c: "charlie", d: "delta", e: "echo",
           f: "frank", g: "gamma", h: "horse", i: "indigo", j: "jones",
           k: "kappa", l: "lamb", m: "mary", n: "nonna", o: "ovary", p: "parrish",
           q: "quarry", r: "rose", s: "steve", t: "tuff", u: "under", v: "vick",
           w: "win", x: "xoxo", y: "year", z: "zip"}

          def encode(my_hash, string)
    result = []
    string.each_char { |letter| result.push(my_hash[letter.to_sym]) }
    result.join(" ")
end
 
def decode(my_hash, string)
  result = []
  words = string.split(" ")
  words.map do  |word|
    result.push(my_hash.invert[word])
  end
  result.join(" ")
end
 
 
# # example for encode
 puts encode(my_hash, "trevor")
 
# # example for encode2
# puts encode2(my_hash, "tucker")
 
# # example for decode
puts decode(my_hash, "delta oscar golf echo")