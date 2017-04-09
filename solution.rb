require 'sinatra'



get '/' do
	puts @@count
	unless @@count
		@@count = 0
		
	else
		@@count = @@count+1
	end
	erb :page
end


configure do
  @@count = 0
end


