require("minitest/autorun")
require("minitest/rg")
require_relative("player")
require_relative("die")
require_relative("tile")
require_relative("board")

def Main

  @hash_board = {
    tile:[

    ]
  }
  @players = {
    name:[

    ]
  }
    #players
    player1 = Player.new()
    die1 = Die.new
    #board creation
    board1 = Board.new(100)
    for num in 0..board1.get_size do
      name = "tile"
      name += num.to_s
      name = Tile.new(num,0)
      new_hash = board1.make_hash(name,num)
      #puts new_hash
      board1.add_tile(new_hash,@hash_board)
    end
    #board exceptions
    for tile in @hash_board[:tile]
      if tile[:location] == 1
        tile[:type] = 1
        tile[:destination] = 38
      end
      if tile[:location] == 4
        tile[:type] = 1
        tile[:destination] = 14
      end
      if tile[:location] == 9
        tile[:type] = 1
        tile[:destination] = 31
      end
      if tile[:location] == 17
        tile[:type] = 1
        tile[:destination] = 7
      end
      if tile[:location] == 21
        tile[:type] = 1
        tile[:destination] = 42
      end
      if tile[:location] == 51
        tile[:type] = 1
        tile[:destination] = 67
      end
      if tile[:location] == 54
        tile[:type] = 1
        tile[:destination] = 34
      end
      if tile[:location] == 62
        tile[:type] = 1
        tile[:destination] = 19
      end
      if tile[:location] == 64
        tile[:type] = 1
        tile[:destination] = 60
      end
      if tile[:location] == 72
        tile[:type] = 1
        tile[:destination] = 91
      end
      if tile[:location] == 80
        tile[:type] = 1
        tile[:destination] = 99
      end
      if tile[:location] == 87
        tile[:type] = 1
        tile[:destination] = 36
      end
      if tile[:location] == 93
        tile[:type] = 1
        tile[:destination] = 73
      end
      if tile[:location] == 95
        tile[:type] = 1
        tile[:destination] = 75
      end
      if tile[:location] == 98
        tile[:type] = 1
        tile[:destination] = 79
      end
    end
      #exceptions end
      #puts @hash_board
      player_number = 0
      in_lop = true
      # while in_lop == true do
      #   puts "add new player yes/no?"
      #   action = gets.chomp
      #   if action == 'yes'
      #     player_number += 1
      #     puts "What is the player's name?"
      #     input = gets.chomp
      #     name = Player.new()

      #     new_hash = board1.make_hash2(name,input,player_number,0)
      #       #puts new_hash
      #       board1.add_player(new_hash,@players)
      #       puts @players

      #     end
      #     if action == 'no'
      #       in_lop = false
      #     end

      #   end
        #player_number = @players.count
        
        in_loop = true
        while in_loop == true do
          #for current_player in player_number do
            #p_name = current_player[:input].to_s
            puts "Hello player do you want to roll or exit?"
            action = gets.chomp
            #$stdin <= figure this out if you want
            if action == 'roll'
              puts 'you rolled'
              die_answer = 0
              while die_answer == 0 do
                die_answer = die1.roll
              end
              puts die_answer
              should_move = player1.get_location + die_answer
              if should_move <= 100
                player1.move(die_answer)
              else
                puts "fell off board! try again!"
              end
              for tile in @hash_board[:tile]
                tile_type = tile[:type]
                tile_location = tile[:location]
                if tile_type == 1 && player1.get_location == tile_location
                  warp_location = tile[:destination]
                  if player1.get_location < warp_location
                    puts "You found a ladder!"
                  else
                    puts "You found a snake!"
                  end
                  player1.warp(warp_location)
                end
            #puts @hash_board
              end
            end
          puts "your current location is"
          puts player1.get_location

          if player1.get_location == 100
            puts "congrats, you won!"
            puts "press enter to close game."
            gets.chomp
            action = 'exit'
          end

          if action == 'exit'
            in_loop = false
            break
           # end
         end
       end
     end




     Main()