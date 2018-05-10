module ConsumptionMeter
  class Size

    attr_reader :price_per_bytes, :total_bytes

    def initialize(price_per_bytes, field, collection)
      @price_per_bytes = price_per_bytes.to_f
      @total_bytes = field.present? ? collection.sum(field).to_f : 0.0
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
          B: source,
          KB: source / 1024,
          MB: source / 1024 / 1024,
          GB: source / 1024 / 1024 / 1024,
          TB: source / 1024 / 1024 / 1024 / 1024
      }.try(:[], unit)
    end

  end
end