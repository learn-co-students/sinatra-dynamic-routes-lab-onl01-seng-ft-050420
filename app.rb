require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end
  get '/square/:number' do
    b = params[:number].to_i
    s = b * b
    s.to_s
  end
  get '/say/:number/:phrase' do
    n = params[:number].to_i
    string = ""
    while n > 0
      n  -=1
      string += params[:phrase]
    end
    string
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    params.each do |k, v|
      string += "#{v} "
    end
    string.delete_suffix(" ") + "."
  end
  get '/:operation/:number1/:number2' do
      o = params[:operation]
      n1 = params[:number1].to_i
      n2 = params[:number2].to_i
      if o == "add"
        n1 + n2
      elsif  o == "subtract"
        n1 - n2
      elsif o == "multiply"
        n1 * n2
      elsif o == "divide"
        n1 / n2
      end.to_s
  end
end
