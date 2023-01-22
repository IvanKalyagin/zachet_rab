class GameWordsController < ApplicationController
  include GameWordsHelper
  @@time_start = 0
  @@time_current = 0
  @@game_mode = 0
  def input
    @@time_current = Time.now
    @time_now = Time.now - @@time_start
  end

  def start_game
    @start_mes = ""
    dl = params[:dl]
    lang = params[:lang]
    case dl
    when "Text"
      @@game_mode = 1
      case lang
      when "Русский"
        @@text_mode = @@text_rus
      else
        @@text_mode = @@text_eng
      end
    when "60_sec"
      @@game_mode = 2
      case lang
      when "Русский"
        @@text_mode = @@word_rus
      else
        @@text_mode = @@word_eng
      end
    when "Sentence"
      @@game_mode = 3
      case lang
      when "Русский"
        @@text_mode = @@predl_rus
      else
        @@text_mode = @@predl_eng
      end
    else
      @start_mes = 'You should choose game mod'
    end
    if @start_mes != 'You should choose game mod' then
      if @@game_mode == 1 then
        @@text_globe = @@text_mode
      elsif @@game_mode == 2 then
        s = ''
        (0..50).each {|i|
          s = s + @@text_mode[rand(@@text_mode.length - 1)] + ' '
        }
        @@text_globe = s
      elsif @@game_mode == 3 then
        @@text_globe = @@text_mode[rand(@@text_mode.length - 1)]
      end
      @text_game = @@text_globe
      @@time_start = Time.now
    end
  end

  def result
    @text_game = @@text_globe
    input_text = params[:n_s]
    @k = 0
    @wpm = 0
    @res = ''
    if @@game_mode == 1 then
      if input_text != nil then
        @time_end = Time.now
        @del_time = @time_end - @@time_start
        @inp_l = input_text.length
        length_origin = @text_game.length
        length_input = input_text.length
        if length_input == length_origin then
          (0..length_input).each { |i|
            if @text_game[i] == input_text[i] then
              @k += 1
            end
          }
          @wpm = (@k/@del_time * 60).round
          @res = 'Complete'
          ActionTime.create(gen_time: @del_time.round(2), user_id: current_user.id) if @wpm != 0
        else
          @res = 'Length does not same'
        end
      else
        @res = 'Input values'
      end
    elsif @@game_mode == 2 then
      if input_text != nil then
        @time_end = Time.now
        @del_time = @time_end - @@time_start
        @inp_l = input_text.length
        length_origin = @text_game.length
        length_input = input_text.length
        if length_input == length_origin then
          (0..length_input).each { |i|
            if @text_game[i] == input_text[i] then
              @k += 1
            end
          }
          @wpm = (@k/@del_time * 60).round
          @res = 'Complete'
          Action.create(gen_results: @wpm, user_id: current_user.id) if @wpm != 0
        else
          @res = 'Length does not same'
        end
      else
        @res = 'Input values'
      end
    elsif @@game_mode == 3 then
      if input_text != nil then
        @time_end = Time.now
        @del_time = @time_end - @@time_start
        @inp_l = input_text.length
        length_origin = @text_game.length
        length_input = input_text.length
        if length_input == length_origin then
          (0..length_input).each { |i|
            if @text_game[i] == input_text[i] then
              @k += 1
            end
          }
          @wpm = (@k/@del_time * 60).round
          @res = 'Complete'
          Action.create(gen_results: @wpm, user_id: current_user.id) if @wpm != 0
        else
          @res = 'Length does not same'
        end
      else
        @res = 'Input values'
      end
    end
  end

  def progress
    @progress = []
    actions = Action.all
    actions.each do |action|
      if action.user_id == current_user.id
        @progress.push(action.gen_results)
      end
    end
    if @progress.length.zero?
      0
    else
      (@progress.sum / @progress.length).round(2)
    end
  end
end
