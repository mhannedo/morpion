class User

    attr_accessor :name, :value, :symbol

    def initialize(name_input,value_input,symbol_input)
        @name = name_input
        @value = value_input
        @symbol = symbol_input
        
    end

    def show_name 
        self.name
    end

    def show_value 
        self.value
    end

    def show_symbol
        self.symbol
    end


    def choice

       return gets.chomp
        
    end

end
