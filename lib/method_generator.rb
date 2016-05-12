require_relative 'arg_parser'

class MethodGenerator
  include ArgParser
  def initialize
    puts "What is the name of the method?"
    method_name = STDIN.gets.chomp
    puts "What is the desired behavior / outcome of #{method_name}?"
    method_behaviour = STDIN.gets.chomp
    puts "What attribute does it modify?"
    modified_method = STDIN.gets.chomp
    method_test = "describe ##{method_name} do \n" + '  ' + "it " +"#{method_behaviour} do \n" + '    ' + "expect {obj.#{method_name}}.to change {obj.#{modified_method}}.by(1)\n" + "  end\n" + "end"
    puts "Your method test: "
    puts "========================================================================="
    puts "\n"
    puts method_test
  end
end
