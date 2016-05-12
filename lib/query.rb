require 'pry'

require_relative 'arg_parser'
require_relative 'troubleshoot'
require_relative 'class_generator'
require_relative 'method_generator'



class Query

  include ArgParser
  include Troubleshoot

  query = ARGV[0].downcase

  if query == 'help'
    puts "Please enter what you need help with"
    topic = STDIN.gets.chomp
    response = Troubleshoot.help(topic)
    puts response
  elsif query == 'class'
    class_gen = ClassGenerator.new
    class_gen
  elsif query == 'method' || query == 'function'
    method_gen = MethodGenerator.new
    method_gen
  end


end
