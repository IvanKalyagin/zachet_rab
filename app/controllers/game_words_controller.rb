class GameWordsController < ApplicationController

  def input
  end

  def result
    @text_game = "London is the capital of Great Britian"
    input_text = params[:n_s]
    @k = 0
    if input_text != nil then
      length_origin = @text_game.length
      length_input = input_text.length
      if length_input == length_origin then
        (0..length_input).each { |i|
          if @text_game[i] == input_text[i] then
            @k += 1
          end
        }
      else
        @res = 'Length does not same'
      end
    else
      @res = 'Input values'
    end
  end

  def progress
  end
end
