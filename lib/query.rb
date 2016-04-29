require_relative 'popquiz'
require_relative 'arg_parser'

test_generator = Popquiz.new
arg_parser = ArgParser.new
helper = Troubleshoot.new

if ARGV[0] == 'Help'
  helper(ARGV[0])
  puts "Please enter what you need help with"
  help = gets.chomp
  if help.downcase == 'object attributes'
    puts "Object attributes accessors are used to communicate your intent to someone reading your code,
    and allow for sharing of operations, values, and more."
if ARGV[0] == 'Class'
  puts "What is the name of the object?"
  class_name = gets.chomp
  puts "Does #{class_name} have to interact with other objects? (Y/N)"
  if ARGV[0].upcase == 'Y'
    puts "Please enter the attributes of #{class_name} that will be used in your environment"
    attributes = gets.chomp
    parsed_args = arg_parser(attributes)
    parsed_args.each { |arg, accessor_status = []|
      puts "Must #{arg} be readable, writable, or both?"
        status = gets.chomp
        accessor_status.push(status)
    }
    attr_hash = attributes.zip(accessor_status).to_h
