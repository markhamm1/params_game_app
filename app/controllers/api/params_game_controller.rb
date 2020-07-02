class Api::ParamsGameController < ApplicationController

  def params_example
    p "params"
    @message = params['name'].upcase
    if @message[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "params_name.json.jb"
  end

  def number_guessing
    user_guess = params[:number].to_i
    correct_answer = 65

    if user_guess > correct_answer
      @message = "Guess too high"
    elsif user_guess < correct_answer
      @message = "Guess too low"
    elsif user_guess == correct_answer
      @message = "That's the correct answer!"
    end 

    render "number_game.json.jb"
  end
  
  def username_password
    username = params[:username]
    password = params[:password]
    
    if username == "hugh"  && password == "swordfish"
      @message = "valid credentials!"
    else
      @message = "invalid credentials"
    end
    render "username_password.json.jb"
  end
end
