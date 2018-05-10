# Consumption Meter 

Library to help

## How to install

Add it to your `Gemfile`: 
```ruby
gem 'consumption-meter'
```

Run the following command to install it:
```shell
$ bundle install
```

## How to use

Include `ConsumptionMeter` inside Model you need to measure: 
```ruby
class MyModel
    include ConsumptionMeter
end
```

Then call measure method:
```ruby
# @params unit, price_per_unit, field, filter={}
MyModel.measure :size, 10, :file_size, {account_id: account.id}
```

## Measures Units

### Size

```ruby
meter = MyModel.measure :size, 10, :file_size, {account_id: account.id}
# Sum file_size = 2179.0

#SHOW PRICE PER UNIT (:B, :KB, :MB, :GB)
meter.price :KB
#> 21.279296875

#SHOW SIZE IN UNIT (:B, :KB, :MB, :GB)
meter.size :KB
#> 2.1279296875
```