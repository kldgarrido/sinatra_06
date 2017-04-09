require 'sinatra'


class Cache

	@@count = 0

  def self.init()
    @@count = -1
  end

  def self.increment()
    @@count = @@count + 1
  end

  def self.count()
    return @@count
  end

end

configure do
  Cache::init()
end

get '/' do
	Cache::increment()
  	erb :page
end





