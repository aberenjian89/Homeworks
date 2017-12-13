require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { Chef.new("Bob") }
  let(:dessert){ Dessert.new("BlueBerry",6,chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("BlueBerry")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(6)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("Test","4",chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("Apple")
      expect(dessert.ingredients[0]).to eq("Apple")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("Orange")
      dessert.add_ingredient("Banana")
      expect(dessert.mix!).to receive(:shuffle!)
      dessert.mix!
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(4)).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(8)}.to raise_error("not enough left!")
    #  dessert.eat(8)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include(chef.name)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
