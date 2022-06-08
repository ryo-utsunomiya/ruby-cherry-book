def convert_hash_syntax(s)
  s.gsub(/:(\w+) *=> */) { "#{$1}: " }
end
