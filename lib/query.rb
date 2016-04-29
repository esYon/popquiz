require 'pry'
require_relative 'popquiz'
require_relative 'arg_parser'

# test_generator = Popquiz.new
# helper = Troubleshoot.new

# if ARGV[0] == 'Help'
#   helper(ARGV[0])
#   puts "Please enter what you need help with"
#   help = gets.chomp
#   if help.downcase == 'object attributes'
#     puts "Object attributes accessors are used to communicate your intent to someone reading your code,
#     and allow for sharing of operations, values, and more."
if ARGV[0].downcase == 'class'
  puts "What is the name of the object?"
  class_name = STDIN.gets.chomp
  puts "Please enter the attributes of #{class_name}: "
  attributes = STDIN.gets.chomp
  parsed_attrs = ArgParser.parse_args(attributes)
  parsed_attrs = parsed_attrs
  accessor_status = []
  parsed_attrs.each { |arg|
    puts "Must #{arg} be readable, writable, or both?"
      status = STDIN.gets.chomp
      accessor_status.push(status)
  }
  # binding.pry
  attr_hash = parsed_attrs.zip(accessor_status).to_h
  attribute_accessor_syntax = []
  attr_hash.each { |k,v|
    if v == 'readable'
      attribute_accessor_syntax.push("attr_reader :#{k}")
    elsif v == 'writable'
      attribute_accessor_syntax.push("attr_writer :#{k}")
    elsif v == 'both'
      attribute_accessor_syntax.push("attr_accessor :#{k}")
    end
  }
end


tests = []

skeleton = "describe #{class_name} do \n" + "  " + "let(:obj) { #{class_name}.new } \n end"
# attribute_accessor_syntax.each { |test|
  # write actual test to a spec file using File operations
  attr_hash.each { |k,v|
    tests.push("describe #{k} do \n" + "  " + "it 'has a(n) #{k}' do \n" + "    " + "expect(:obj.#{k}).to be_kind_of(#{k}.class) \n" + "  " + "end \n end")
  }
# }
puts "Your test skeleton"
puts "========================================================================="
puts "\n"
puts skeleton
puts "\n"
puts "Include these in your #{class_name}: "
puts "========================================================================="
puts "\n"
attribute_accessor_syntax.each { |attr| puts attr }
puts "\n"
puts "Insert the following tests inside #{class_name} skeleton: "
puts "========================================================================="
puts "\n"
tests.each { |test| puts test }


# end
# end
