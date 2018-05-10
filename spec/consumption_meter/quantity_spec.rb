require 'rails_helper'

RSpec.describe ConsumptionMeter::Quantity do
  let(:fake_model) { FakeModel.all }

  describe "#initialize" do
    it "instance the variables" do
      allow(fake_model).to receive(:sum).and_return(5)
      m = ConsumptionMeter::Quantity.new(10, :fake_qty, fake_model)
      expect(m.price_per_unit).to eq(10.0)
      expect(m.total_units).to eq(5.0)
    end
  end

  describe "#price" do
    it "return total price of collection" do
      allow(fake_model).to receive(:sum).and_return(5)
      expect(ConsumptionMeter::Quantity.new(10, :fake_qty, fake_model).price).to eq(50.0)
    end
    it "return total count of collection" do
      allow(fake_model).to receive(:count).and_return(5)
      expect(ConsumptionMeter::Quantity.new(10, nil, fake_model).price).to eq(50.0)
    end
  end

  describe "#size" do
    it "return sum size of collection" do
      allow(fake_model).to receive(:sum).and_return(5)
      expect(ConsumptionMeter::Quantity.new(10, :fake_qty, fake_model).size).to eq(5.0)
    end
    it "return total count of collection" do
      allow(fake_model).to receive(:count).and_return(5)
      expect(ConsumptionMeter::Quantity.new(10, nil, fake_model).size).to eq(5.0)
    end
  end

end