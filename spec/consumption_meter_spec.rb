require 'rails_helper'

describe ConsumptionMeter do

  it 'have version number' do
    expect(ConsumptionMeter::VERSION).not_to be_nil
  end

  describe '.measure' do
    context 'when time' do
      it { expect(FakeModel.measure(:hour, 1, :fake_time)).to be_a ConsumptionMeter::Time }
      it { expect(FakeModel.measure(:minute, 1, :fake_time)).to be_a ConsumptionMeter::Time }
      it { expect(FakeModel.measure(:second, 1, :fake_time)).to be_a ConsumptionMeter::Time }
    end
    context 'when date' do
      it { expect(FakeModel.measure(:day, 1, :fake_date)).to be_a ConsumptionMeter::Date }
      it { expect(FakeModel.measure(:month, 1, :fake_date)).to be_a ConsumptionMeter::Date }
      it { expect(FakeModel.measure(:year, 1, :fake_date)).to be_a ConsumptionMeter::Date }
    end
    context 'when size' do
      it { expect(FakeModel.measure(:size, 1, :fake_size)).to be_a ConsumptionMeter::Size }
    end
    context 'when quantity' do
      it { expect(FakeModel.measure(:quantity, 1, :fake_qty)).to be_a ConsumptionMeter::Quantity }
      it { expect(FakeModel.measure(:quantity, 1)).to be_a ConsumptionMeter::Quantity }
    end
    context 'when unknow' do
      it { expect{FakeModel.measure(:unknow, 1)}.to raise_error("Unknow Unit to Measure") }
    end
  end

end