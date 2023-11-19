#!/usr/bin/env ruby

require_relative 'players'
require_relative 'questions'

# game: state, tracks player turns, loops game
module MyGame

  class Game
    attr_accessor :turn, :player_one, :player_two, :current_player

    # initializes new game
    def initialize
      @turn = 1
      @player_one = Player.new("Player One")
      @player_two = Player.new("Player Two")
      @current_player = @player_one
    end

    def start_game
      while @player_one.lives > 0 && @player_two.lives > 0
        ask_question
        switch_players
        @turn += 1
      end
      puts "The winner is #{current_player.name}! Player One: #{player_one.score}, Player Two: #{player_two.score}"
    end


    # call a question
    def ask_question
      puts "It is #{current_player.name}'s turn and turn #{turn}."
      question = Questions.new
      question.new_question
      player_answer = gets.chomp.to_i
      update_score(player_answer, question.answer)
    end

    # to update scores
    def update_score(player_answer, answer)
      if player_answer == answer
        @current_player.score += 1
      else
        @current_player.lives -= 1
      end
      puts "Player One: #{player_one.lives}, Player Two: #{player_two.lives}"
    end

    def switch_players
      @current_player = (@current_player == @player_one) ? @player_two : @player_one
    end

  end

end

game = MyGame::Game.new
game.start_game

