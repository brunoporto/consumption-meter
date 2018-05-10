module ConsumptionMeter
  class Quantity

    attr_reader :price_per_unit, :total_units

    def initialize(price_per_unit, field, collection)
      @price_per_unit = price_per_unit.to_f
      @total_units = (field.present? ? collection.sum(field) : collection.count).to_f
    end

    def price
      size * price_per_unit
    end

    def size
      total_units
    end

  end
end
