require 'Singleton'

class DummyClass
  include Singleton

  def Method
    puts "Hello from another class"
  end
end
