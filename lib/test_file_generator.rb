require 'fileutils'

module TestFileGenerator
  def relocate_specs(test_file)
    FileUtils.mv("/popquiz/#{@test_file}", '../spec')
  end
  def self.create_file(class_name)
    @filename = class_name
    @test_file = File.new("#{@filename}_spec.rb", 'w+')
    relocate_specs(@test_file)
  end

end
