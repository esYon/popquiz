require_relative '../lib/class_generator'

describe ClassGenerator do
  let(:cgen) { ClassGenerator.new }

  describe "ClassGenerator" do
    it "generates a spec file" do
      expect(:cgen).to exist
    end
  end

end
