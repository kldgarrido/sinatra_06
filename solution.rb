require 'sinatra'


class Cache

	@@count = 0

  def self.init()
    @@count = 0
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
	if Cache::count() == 0
	    Cache::increment()
  	else
	    Cache::increment()
  	end

  	erb :page
end





