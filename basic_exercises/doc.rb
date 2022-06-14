require 'yaml'
# Parse a YAML string
YAML.load("--- foo") #=> "foo"

# Emit some YAML
YAML.dump("foo")     # => "--- foo\n...\n"
{ :a => 'b'}.to_yaml  # => "---\n:a: b\n"