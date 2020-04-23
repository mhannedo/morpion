class BoardCase

    attr_accessor :name, :value, :symbol
    
    def initialize(name_input)
        @name = name_input
        @value = 0
        @symbol = "-"

    end

    def on_screen
        return self.symbol
    end

    def change_values(value_input,symbol_input)
        self.value = value_input
        self.symbol = symbol_input
        
    end

 def show 
    puts "#{self.value}"
    puts "#{self.symbol}"

end

end
