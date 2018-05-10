module ConsumptionMeter
  class Engine < ::Rails::Engine
    engine_name "consumption_meter"

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
