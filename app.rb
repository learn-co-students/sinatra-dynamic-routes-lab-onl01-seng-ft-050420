require_relative 'config/environment'

class App < Sinatra::Base
    get '/reversename/:name' do
      @name = params[:name]
      @name.reverse
    end
    get '/square/:number' do
      @number = params[:number]
      @squared_number = @number.to_i**2
      @squared_number.to_s
    end

    get '/say/:number/:phrase/' do
      @number = params[:number].to_i
      @phrase = params[:phrase]
      @output = ""
      @number.times {@output += @phrase}
      @output
      end

end