require 'fileutils'

module TestFileGenerator

  # def relocate_specs(test)
  #   FileUtils.mv "#{@test_file}", "/../lib/spec"
  # end
  def self.create_file(class_name)
    @filename = class_name
    @test_file = File.new("#{@filename}_spec.rb", 'w+')

    # @test_file.write_tests(template, tests)
  end

  # def self.write_tests(template, tests)
  #
  # end

end
