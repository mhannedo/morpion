class Board

    @@array =[]
    @@array_counter = []
    @@counter = 0
   
    def initialize
  
        @@array << @a1 = BoardCase.new("a1")
        @@array << @a2 = BoardCase.new("a2")
        @@array << @a3 = BoardCase.new("a3")
        @@array << @b1 = BoardCase.new("b1")
        @@array << @b2 = BoardCase.new("b2")
        @@array << @b3 = BoardCase.new("b3")
        @@array << @c1 = BoardCase.new("c1")
        @@array << @c2 = BoardCase.new("c2")
        @@array << @c3 = BoardCase.new("c3")
       
    end

    def check_if_available(case_choosen)
        @@array.each do |a|
            if a.name == case_choosen
                if a.value==0 
                    return 1
                else return 0   
                end 
            end        
        end
    end

    def change(case_choosen,user_input)
        
        while self.check_if_available(case_choosen) == 0 
            puts "Il faut choisir une case libre neuneu. Quelle case choisis-tu ? "
            case_choosen = user_input.choice
        end
        
        @@array.each do |a|
            if a.name == case_choosen
                a.change_values(user_input.value,user_input.symbol) 
            end
            
        end        
    
    end   
    
    def showi
        return @@array
    end


    def counting 

        @x = 0
        @y = 0
        @z = 0
        @u = 0
        @v = 0
        @w = 0
        @d1 = 0
        @d2 = 0

        @@array_counter.clear 

            @@array.each do |a|
                if a.name.include?('a') && a.value != 0
                    @x = @x + a.value  
                end  
                if a.name.include?('b') && a.value != 0
                    @y = @y + a.value  
                end  
                if a.name.include?('c') && a.value != 0
                    @z = @z + a.value  
                end  
                if a.name.include?('1') && a.value != 0
                    @u = @u + a.value  
                end  
                if a.name.include?('2') && a.value != 0
                    @v = @v + a.value  
                end  
                if a.name.include?('3') && a.value != 0
                    @w = @w + a.value  
                end        
            end
            
            @d1 = @a1.value + @b2.value + @c3.value
            @d2 = @c1.value + @b2.value + @a3.value

        @@array_counter << @x
        @@array_counter << @y
        @@array_counter << @z
        @@array_counter << @u 
        @@array_counter << @v 
        @@array_counter << @w 
        @@array_counter << @d1 
        @@array_counter << @d2
        
        return @@array_counter
                    
    end

    def check_end_game
        
        @@counter = @@counter + 1

        if self.counting.include? 3 
               return 1 
        elsif self.counting.include? 30
                return 2
        elsif @@counter == 9 
            return 3
        else return 0
        end
        
    end

    def show

        puts "   1|2|3|"
        puts " A  |#{@a1.on_screen}|#{@a2.on_screen}|#{@a3.on_screen}|"
       
        puts " B  |#{@b1.on_screen}|#{@b2.on_screen}|#{@b3.on_screen}|"
        
        puts " C  |#{@c1.on_screen}|#{@c2.on_screen}|#{@c3.on_screen}|"
        
    end


    def end_text(user_name)
        if self.counting.include? 3 
        puts "Terminado, le #{user_name} a gagné"
        elsif self.counting.include? 30
        puts "Terminado, le #{user_name} a gagné"
        elsif @@counter == 9
        puts "Match nul" 
        end
    end

end
