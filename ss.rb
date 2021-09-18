dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

def substrings(string, dictionary)
  # create a new hash for storing substrings key and value
  substring_hash = Hash.new

  # iterate over the words in dictionary array
  dictionary.each do |w|
    # string is scanned and assigned when matching iterated dictionary words is found
    substrings_scanned = string.scan(w)

    # the scanned string is counted and assigned to substrings_count variable
    substrings_count = substrings_scanned.count

    #substring hash with key of dictionary word is assigned value of the substring count values everytime it is iterated
    substring_hash[w] = substrings_count
  end

  # once iteration has finished return substring hash
  substring_hash
end

# expected =>   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
