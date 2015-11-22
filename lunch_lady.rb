@walletsize = []
@wallet = 10
@order = []
@sum = 0


@Hamburger = 3
@Hotdog = 2
@Porkchop = 4
@MacnCheese = 2
@Potatoes = 2
@Fries = 2
@Doritos = 1
@Lays = 1
@Conehead = 1
@Chex = 1
@Dr_P = 1
@Sprite = 1


@main_dish = ['1. $3 - Hamburger', '2. $2 - Hotdog', '3. $4 - Porkchop']
@side_dish = ['1. $2 - MacnCheese', '2. $2 - Potatoes', '3. $2 - Fries']
@add_on = ['1. Doritos', '2. Lays', '3. Conehead', '4. Chex', '5. Dr_P', '6. Sprite']
def start
  welcome
end

def add_ons
  puts "Choose extra items now."
  puts @add_on
  answerz = gets.chomp.strip
    if answerz == '1'
      @walletsize << @Doritos
      @order << '$1 - Doritos'
      elsif answerz == '2'
         @walletsize << @Lays
         @order << '$1 - Lays'
      elsif answerz == '3'
         @walletsize << @Conehead
         @order << '$1 - Conehead'
      elsif answerz == '4'
        @walletsize << @Chex
        @order << '$1 - Chex'
      elsif answerz == '5'
        @walletsize << @Dr_P
        @order << '$1 - Dr_P'
      elsif answerz == '6'
        @walletsize << @Sprite
        @order << '$1 - Sprite'
      else answerz == 'clear'
        @order.clear
        @walletsize.clear
        start
    end
      puts "Your order thus far:"
      puts @order
      puts "Your total is:"
      @sum = 0
      @walletsize.inject{|sum,x| sum + x }
        unless @walletsize.empty?
          answer = @walletsize[0] + @walletsize[1] + @walletsize[2] + @walletsize[3]
          puts "$"
          puts answer
            if answer > @wallet
              puts "You do not have enough money! Try again!"
              exit(0)
            end
        end
        
end

def side_dishh2
  puts "Choose your second side:"
  puts @side_dish
  order_3 = gets.chomp.strip
    if order_3 == '1'
      @walletsize << @MacnCheese
      @order << '$2 - Mac.Cheese'
      elsif order_3 == '2'
        @walletsize << @Potatoes
        @order << '$2 - Potatoes'
      elsif order_3 == '3'
        @walletsize << @Fries
        @order << '$2 - Fries'
      elsif order_3 == 'clear'
        @order.clear
        @walletsize.clear
        start
      else order_3 != '1'||'2'||'3'
        exit(0)
    end
    add_ons
      
      
end



def side_dishh
  puts "Choose your side:"
  puts @side_dish
  order_2 = gets.chomp.strip
    if order_2 =='1'
      @walletsize << @Macncheese
      @order << '$2 - Mac.Cheese'
      elsif order_2 == '2'
        @walletsize << @Potatoes
        @order << '$2 - Potatoes'
      elsif order_2 == '3'
        @walletsize << @Fries
        @order << '$2 - Fries'
      elsif order_2 == 'clear'
        @order.clear
        @walletsize.clear
        start
      else order_2 != '1'||'2'
        puts "Please try again."
        exit(0)
    end
     side_dishh2
    
end




def welcome
  puts "Welcome to the Cafeteria!"
  puts "Choose your main dish:"
  puts @main_dish
  order_1 = gets.chomp.strip
    if order_1 == '1'
      @walletsize << @Hamburger
      @order << '$3 - Hamburger'
      elsif order_1 == '2'
        @walletsize << @Hotdog
        @order << '$2 - Hotdog'
      elsif order_1 == '3'
        @walletsize << @Porkchop
        @order << '$4 - Porkchop'
    end
      side_dishh
end

welcome









# main_dish = [hamburger, hotdog, porkchop]
# side_dish = [macncheese, potatoes, fries]



# @sloppy_joe = "$5.00"
# @magic_meat = "$5.00"
# @mystery_meat = "$4.00"
# @sprite = "$2"
# @Dr_P = "$2"

# def lunch(main_dish, side_dish)
#   puts greeting1
#   puts main_dish
#   gets.strip = answer
#     if answer == '1'||'2'||'3'
#      puts greeting_2
#      puts side_dish
#      gets.strip = answer2
#    if answer2 == '1'
#     puts "Choose one more side dish."
#   elsif answer2 == '2'
#     puts "Choose one more side dish."
#   elsif answer2 == '3'
#     puts "Choose one more side dish."
#   end
# end

# def main_dish
#   puts "1. Hamburger - $5"
#   puts "2. Hotdog - $5"
#   puts "3. Porkchop - $5"
# end


# def greeting1
#   puts "Choose a Main dish."
# end

# def greeting_2
#   puts "Choose two side dishes"
# end

