require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    backwards = :name.reverse!
  end

  get '/square/:number' do
    squarenum = :number.to_i.square!
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @text = params[:phrase].to_s
    "#{n * text}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    reversename = ':word1/:word2/:word3/:word4/:word'.to_sentence
  end

  get '/:operation/:number1/:number2' do
    # @x = params[:number1].to_i
    # @y = params[:number2].to_i

    case :operation
    when "add"
      params[:number1].to_i + params[:number2].to_i
    when "subtract"
      params[:number1].to_i - params[:number2].to_i
    when "multiply"
      params[:number1].to_i * params[:number2].to_i
    when "divide"
      params[:number1].to_i / params[:number2].to_i

    # add = @x + @y
    # subtract = @x - @y
    # multiply = @x * @y
    # divide = @x / @y
      #
      # @addition = params[:number1].to_i + params[:number2].to_i
      # @subtraction = params[:number1].to_i - params[:number2].to_i
      # @multiply = params[:number1].to_i * params[:number2].to_i
      # @divide = params[:number1].to_i / params[:number2].to_i
      #
      #  "#{@addition, @subtraction, @multiply, @divide}"
    end
end
end
