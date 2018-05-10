require 'rails_helper'

describe ConsumptionMeter do
  it 'have version number' do
    expect(ConsumptionMeter::VERSION).not_to be_nil
  end
end