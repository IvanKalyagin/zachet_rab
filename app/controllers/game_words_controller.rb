class GameWordsController < ApplicationController
@@time_start = 0
  def input
    @text_game = "London is the capital of Great Britian"
  end

  def start_game
    @text_game = "London is the capital of Great Britian"
    @@time_start = Time.now
  end
  def result
    @text_game = "London is the capital of Great Britian"
    input_text = params[:n_s]
    @k = 0
    if input_text != nil then
      @time_end = Time.now
      @del_time = @time_end - @@time_start
      length_origin = @text_game.length
      length_input = input_text.length
      if length_input == length_origin then
        (0..length_input).each { |i|
          if @text_game[i] == input_text[i] then
            @k += 1
          end
        }
        @wpm = @k/@del_time * 60
        @wpm.round
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
