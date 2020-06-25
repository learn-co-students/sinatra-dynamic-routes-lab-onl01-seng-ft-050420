require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    i_string = ""
    @num.times do
      i_string += @phrase
    end
    i_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @total = ''

    case @operation
    when 'add'
      @total = (@number1 + @number2).to_s
    when 'subtract'
      @total = (@number1 - @number2).to_s
    when 'multiply'
      @total = (@number1 * @number2).to_s
    when 'divide'
      @total = (@number1 / @number2).to_s
    end
  end
  
end