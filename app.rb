require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    @number.to_s
  end

  get '/say/:number/:phrase' do

    str = "" # Sets a string to nothing
    @num = params[:number].to_i # Sets our instance variable to the passed in number and converts it to an integer
    @phrase = params[:phrase] # Basic

    @num.times do # Takes our number and repeats the phrase that many times
      str += "#{@phrase}\n"
    end

    str # Returns the new value for the string

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # Create a case statement for each operation
    case @oper
    when "subtract"
      (@num1 - @num2).to_s
    when "add"
      (@num1 + @num2).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end
  end

end
