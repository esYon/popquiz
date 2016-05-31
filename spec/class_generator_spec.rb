require_relative '../lib/class_generator'

describe ClassGenerator do
  let(:cgen) { ClassGenerator.new }

  describe "ClassGenerator" do
    it "generates a test skeleton and attribute accessors" do
      expect(:cgen).to be_a_kind_of(string)
    end
  end

end
