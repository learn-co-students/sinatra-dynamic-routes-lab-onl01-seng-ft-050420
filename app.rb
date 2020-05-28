require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    name = params[:name]
    return name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    return (number**2).to_s
  end
  
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    output = ""
    
    while number > 0
      output << phrase
      number -= 1
    end
    
    output << "."
    return output
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    output = []
    
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    
    output << word1
    output << word2
    output << word3
    output << word4
    output << word5
    
    return output.join(" ") << "."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    case operation
    when "add"
      return (number1 + number2).to_s
    when "subtract"
      return (number1 - number2).to_s
    when "multiply"
      return (number1 * number2).to_s
    when "divide"
      return (number1 / number2).to_s
    end
  end
end