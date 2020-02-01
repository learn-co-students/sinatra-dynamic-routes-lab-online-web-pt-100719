require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name] 
    @reverse_name = @name.reverse
    @reverse_name 
  end 

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number  
    @square.to_s
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string << @phrase
    end 
    @string 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    @string = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."  

    @string
  end 

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i   
    @number2 = params[:number2].to_i 
    
    if @operation == "add"
      @solution = @number1 + @number2
    elsif @operation == "subtract"
      @solution = @number1 - @number2
    elsif @operation == "multiply"
      @solution = @number1 * @number2
    else @operation == "divide"
      @solution = @number1/@number2
    end 
    @solution.to_s
  end 
  

end