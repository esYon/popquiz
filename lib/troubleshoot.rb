module Troubleshoot
  def self.help(topic)
    if topic.downcase == 'about'
      "====================================================================\n"
      "Popquiz is a Ruby gem designed to ease and expedite the TDD(Test-Driven-Development) software development process. TDD relies on the repetition of a very short development cycle: first an (initially failing) automated test case is written that defines a desired improvement or new function. Then, the minimum amount of code is written to pass that test, and finally one refactors the new code to acceptable standards."
    end
    if topic.downcase == 'attribute accessors'
      "====================================================================\n"
      "Attribute accessors are used to communicate your intent to someone reading your code, and allow for sharing of operations, values, and more."
    end
    if topic.downcase == 'matchers'
      "====================================================================\n"
      "Each matcher can be used with expect(..).to or expect(..).not_to to define positive and negative expectations respectively on an object. Most matchers can also be accessed using the (...).should and (...).should_not syntax"
    end
  end
end
