# PARSER OPERATIONS

attrs = ['fruit', 'age', 'height']
attr_accessors = ['reader', 'accessor', 'reader']
attr_dict = attrs.zip(attr_accessors).to_h

attribute_accessor = []
attr_dict.each { |k,v|
  if v == 'reader'
    attribute_accessor.push("attr_reader :#{k}")
  elsif v == 'accessor'
    attribute_accessor.push("attr_accessor :#{k}")
  elsif v == 'writer'
    attribute_accessor.push("attr_writer :#{k}")
  end
}

# TEST BUILDER OPERATIONS

tests = []

skeleton = "describe #{class_name} do \n" + "  " + "let(:obj) { #{class_name}.new } \n end"
attribute_accessor.each { |test|
  # write actual test to a spec file using File operations
  attr_dict.each { |k,v|
    "describe #{k} do \n" + "  " + "it 'has a(n) #{k}' do \n" + "    " + "expect(:obj.#{k}).to be_kind_of(#{k}.class) \n" + "  " + "end \n end"
  }
}
