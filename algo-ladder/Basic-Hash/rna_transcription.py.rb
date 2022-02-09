# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

string_of_rna = 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

def transcribe_rna(string_of_rna)
  transcribe_hash = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U",
  }
  array_of_chars = string_of_rna.split(//)
  return array_of_chars.map{ |char| char = transcribe_hash[char] }.join("")
end

p transcribe_rna(string_of_rna)