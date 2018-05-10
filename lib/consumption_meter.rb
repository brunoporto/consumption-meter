require 'consumption_meter/engine'
require 'consumption_meter/size'

module ConsumptionMeter

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def measure(unit, price_per_unit, field, filter={})
      collection = self.where(filter)
      case unit
        when :hour, :minute, :second
          # ConsumptionMeter::Time.new(unit, price_per_unit, field, filter)
        when :day, :month, :year
          # ConsumptionMeter::Date.new(unit, price_per_unit, field, filter)
        when :size
          ConsumptionMeter::Size.new(price_per_unit, field, collection)
        when :quantity
          # ConsumptionMeter::Quantity.new(price_per_unit, field, filter)
        else
          raise "Unknow Unit to Measure"
      end
    end
  end


end