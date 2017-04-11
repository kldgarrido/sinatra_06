require 'sinatra'


class Cache

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
	#Cache::increment()
  erb :page
end

post '/' do
  Cache::increment()
  erb :page
end





