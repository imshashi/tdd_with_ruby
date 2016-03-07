require 'car'

describe 'Car' do

  describe 'attributes' do

    subject { Car.new }

    # use 'subject' instead of 'let'
    # if variable is subject of example

    # let(:car) { Car.new }

    # 'let' is better than the 'before' for
    # setting up instance variables

    # before(:example) do
    #   @car = Car.new
    # end

    # skipping with xit
    it "allows reading and writing for :make" do
      subject.make = "Test"
      expect(subject.make).to eq("Test")
    end

    it "allows reading and writing for :year" do
      subject.year = 9999
      expect(subject.year).to eq(9999)
    end

    it "allows reading and writing for :color" do
      subject.color = "foo"
      expect(subject.color).to eq("foo")
    end

    it "allows reading for :wheels" do
      expect(subject.wheels).to eq(4)
    end

    # pending this following example
    it "allows writing for :doors"

  end

  describe '.colors' do

    let(:colors) { ['blue', 'black', 'red', 'green'] }
    it "returns an array of color names" do
      expect(Car.colors).to match_array(colors)
    end
  end

  describe '#full_name' do

    let(:skoda) { Car.new(make: "Skoda", year: 2018, color: "blue") }
    let(:new_car) { Car.new }

    context "when initialized with no arguments" do
      it "returns a string using default values" do
        expect(new_car.full_name).to eq("2007 Volvo (Unknown)")
      end
    end

    it "returns a string in expected format" do
      expect(skoda.full_name).to eq("2018 Skoda (blue)")
    end
  end
end
