require './instance_test.rb'
require '../../api/weather.rb'

dc = DummyClass.instance
puts dc.Method

weather = Weather.instance
puts weather.posts