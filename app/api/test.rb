require 'json'
require 'rubygems'

# Reading the json file
file = File.read "test_resource.json"

# Getting the json data
j = JSON.load file

# Printing the class of the json object
puts j.class

# Getting an array of the first level keys from the json object
array = j.keys

# Printing the array
puts array

# Moving two levels deep into the json file, to get the temperature of our city
puts temperature = j['main']['temp']

# Converting the value from kelvin to celsius
puts celsius = temperature - 273.15

# Rounding the value off to give a whole number
puts celsius.round(0)