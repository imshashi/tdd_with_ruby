require 'car'

describe 'Car' do

  describe 'attributes' do

    before(:example) do
      @car = Car.new
    end
    # skipping with xit
    it "allows reading and writing for :make" do
      @car.make = "Test"
      expect(@car.make).to eq("Test")
    end

    it "allows reading and writing for :year" do
      @car.year = 9999
      expect(@car.year).to eq(9999)
    end

    it "allows reading and writing for :color" do
      @car.color = "foo"
      expect(@car.color).to eq("foo")
    end

    it "allows reading for :wheels" do
      expect(@car.wheels).to eq(4)
    end

    # pending this following example
    it "allows writing for :doors"

  end

  describe '.colors' do

    it "returns an array of color names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(c)
    end
  end

  describe '#full_name' do

    context "when initialized with no arguments" do
      it "returns a string using default values" do
        car = Car.new
        expect(car.full_name).to eq("2007 Volvo (Unknown)")
      end
    end

    it "returns a string in expected format" do
      @skoda = Car.new(make: "Skoda", year: 2018, color: "blue")
      expect(@skoda.full_name).to eq("2018 Skoda (blue)")
    end
  end
end
