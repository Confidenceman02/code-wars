def reverse_letter(string)
  string.gsub(/[^a-zA-Z]/, '').reverse
end