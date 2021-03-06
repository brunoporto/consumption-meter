require 'consumption_meter/engine'
require 'consumption_meter/size'
require 'consumption_meter/quantity'
require 'consumption_meter/date'
require 'consumption_meter/time'

module ConsumptionMeter

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def measure(unit, price_per_unit, field=nil, filter=nil)
      collection = filter.nil? ? self.all : self.where(filter)
      case unit
        when :hour, :minute, :second
          ConsumptionMeter::Time.new(unit, price_per_unit, field, collection)
        when :day, :month, :year
          ConsumptionMeter::Date.new(unit, price_per_unit, field, collection)
        when :size
          ConsumptionMeter::Size.new(price_per_unit, field, collection)
        when :quantity
          ConsumptionMeter::Quantity.new(price_per_unit, field, collection)
        else
          raise "Unknow Unit to Measure"
      end
    end
  end


end