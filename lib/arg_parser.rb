module ArgParser
  def self.parse_args(input)
    @args = input
    @parsed_args = @args.split()
  end
end
