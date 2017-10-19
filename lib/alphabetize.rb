def alphabetize(arr)
alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

alphahash = Hash.new(0)
alphabet.split("").each.with_index {|ch, i| alphahash[ch] = i}

  arr.sort_by do |string|
    string.split("").map do |ch|
      alphahash[ch]
    end
  end
end