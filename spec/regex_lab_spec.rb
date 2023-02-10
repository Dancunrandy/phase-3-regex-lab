require 'rspec'

def starts_with_a_vowel?(str)
  str =~ /^[aeiouAEIOU]/i
end

def words_starting_with_un_and_ending_with_ing(str)
  str.scan(/\bun\w+ing\b/i)
end

def words_five_letters_long(str)
  str.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(str)
  str =~ /^[A-Z][^\.\!\?]*[\.\!\?]$/
end

def valid_phone_number?(str)
  str =~ /^\d{3}-\d{3}-\d{4}$/
end

describe 'Regular expression methods' do
  let(:str1) { "The quick brown fox jumps over the lazy dog" }
  let(:str2) { "United Nations" }
  let(:str3) { "He said, 'Hello, World!'" }
  let(:str4) { "123-456-7890" }
  let(:str5) { "Inadequate" }

  it 'starts_with_a_vowel?' do
    expect(starts_with_a_vowel?(str1)).to be_nil
    expect(starts_with_a_vowel?(str2)).to eq(0)
    expect(starts_with_a_vowel?(str5)).to eq(0)
  end

  it 'words_starting_with_un_and_ending_with_ing' do
    expect(words_starting_with_un_and_ending_with_ing(str1)).to eq([])
    expect(words_starting_with_un_and_ending_with_ing(str2)).to eq["United Nations"]
  end

  it 'words_five_letters_long' do
    expect(words_five_letters_long(str1)).to eq(["quick", "brown", "jumps"])
  end

  it 'first_word_capitalized_and_ends_with_punctuation?' do
    expect(first_word_capitalized_and_ends_with_punctuation?(str1)).to be_nil
    expect(first_word_capitalized_and_ends_with_punctuation?(str3)).to eq(0)
  end

  it 'valid_phone_number?' do
    expect(valid_phone_number?(str1)).to be_nil
    expect(valid_phone_number?(str4)).to eq(0)
  end
end
