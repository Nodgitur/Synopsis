require 'httparty'

class Target
  def request
    'Hello from target'
  end
end

class Adaptee
  include HTTParty

  def initialize
    @read = ""
  end

  def json_method
    @response = self.class.get(
      "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=5GaCZ5ENVuaClYeDXCGXJqL1js92kNSZ")

    articles = @response['results']

    articles.each do |article|
      @read += "#{article['title']} #{article['section']}; "
    end
  end

  def read_method
    @read
  end
end

class Adapter < Target
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def request
    "Today's top 40 news articles are #{@adaptee.read_method} that's all for today"
  end
end

def news_print(target)
  target.request
end