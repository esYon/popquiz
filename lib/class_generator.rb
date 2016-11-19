require_relative 'arg_parser'
require_relative 'test_file_generator'

class ClassGenerator
  include ArgParser
  include TestFileGenerator
  def initialize
    puts "What is the name of the object?"
    class_name = STDIN.gets.chomp

    puts "Please enter the attributes of #{class_name}: "
    attributes = STDIN.gets.chomp
    parsed_attrs = ArgParser.parse_args(attributes)
    accessor_status = []
    parsed_attrs.each { |arg|
      puts "Must #{arg} be readable, writable, or both?"
        status = STDIN.gets.chomp
        accessor_status.push(status)
    }

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
    tests = []

    skeleton = "describe #{class_name} do \n" + "  " + "let(:obj) { #{class_name}.new } \nend"
    # attribute_accessor_syntax.each { |test|
      # write actual test to a spec file using File operations
    attr_hash.each { |k,v|
      tests.push("describe #{k} do \n" + "  " + "it 'has a(n) #{k}' do \n" + "    " + "expect(:obj.#{k}).to be_kind_of(#{k}.class) \n" + "  " + "end \n end")
    }
    puts "Tests generated for #{class_name}"

    testfile = TestFileGenerator.create_file(class_name)
    File.open(testfile, 'a') { |f| f.write("require_relative '../lib/#{class_name}'\n\n")}
    File.open(testfile, 'a') { |f| f.write("#{skeleton}\n")}
    tests.each { |test| File.open(testfile, 'a') {|f| f.write("#{test}\n")} }
    File.open(testfile, 'a') { |f| f.write("end")}

    testfile
  end
end
