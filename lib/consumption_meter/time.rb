module ConsumptionMeter
  class Time

    attr_reader :unit, :price_per_unit

    def initialize(unit, price_per_unit, field, collection)
      @price_per_unit = price_per_unit.to_f
      # @total_bytes = field.present? ? collection.sum(field).to_f : 0.0
    end

    def price(unit)
      unit_conversions (size * price_per_bytes), unit
    end

    def size(unit=:B)
      unit_conversions total_bytes, unit
    end

    private
    def unit_conversions(source, unit=:B)
      unit = unit.to_s.to_sym unless unit.is_a?(Symbol)
      {
          D: source,
          M: source / 1024,
          Y: source / 1024 / 1024
      }.try(:[], unit)
    end

  end
end