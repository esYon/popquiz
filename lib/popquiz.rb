class Popquiz
  def initialize(args={})
    @class = args[:class]
    @method = args[:method]
  end

  def gather_args
  end

  def object_tests
    ARGV.any?
    if ARGV[0] = "Obj"
      if ARGV[1] = "Env"
        puts "Test return value of object. Wrap method call in variable to ensure proper message is being returned to interact with environment"
      end
    end
  end

  def decision_struct_tests
    ARGV.any?
    if ARGV[0] = "IF"
    elsif ARGV[1] =

  end
end
