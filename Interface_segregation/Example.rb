# The interface segregation principle is applicable to static languages, 
# and since Ruby is a dynamic language, there is no concept of interfaces. 
# Ruby does not have interfaces, but let us look at the class and subclass concept to build something similar.

class CoffeeMachineInterface
    def select_drink_type
        # select drink type logic
    end
  
    def select_portion
       # select portion logic
    end
  
    def select_sugar_amount
       # select sugar logic
    end
  
    def brew_coffee
       # brew coffee logic
    end
  
    def clean_coffee_machine
      # clean coffee machine logic
    end
  
    def fill_coffee_beans
      # fill coffee beans logic
    end
  
    def fill_water_supply
      # fill water logic
    end
  
    def fill_sugar_supply
      # fill sugar logic
    end
  end
  
  class Person
    def initialize
      @coffee_machine = CoffeeMachineInterface.new
    end
  
    def make_coffee
      @coffee_machine.select_drink_type
      @coffee_machine.select_portion
      @coffee_machine.select_sugar_amount
      @coffee_machine.brew_coffee
    end
  end
  
  class Staff
    def initialize
      @coffee_machine = CoffeeMachineInterface.new
    end
  
    def serv
      @coffee_machine.clean_coffee_machine
      @coffee_machine.fill_coffee_beans
      @coffee_machine.fill_water_supply
      @coffee_machine.fill_sugar_supply
    end
  end

  
  # As you can see, the interface is used by two types of users: a Person and a Staff. 
  # Each uses only a few interface abilities, however. 
  # For example, the class Person uses only the following methods: “select_drink_type“, “select_portion“, “select_sugar_amount“, and “brew_coffee“. 
  # The ISP principle tells that one class should contain only the method it uses.

  #lets take new approch 
  class CoffeeMachineUserInterface
    def select_drink_type
        # select drink type logic
    end
  
    def select_portion
       # select portion logic
    end
  
    def select_sugar_amount
       # select sugar logic
    end
  
    def brew_coffee
       # brew coffee logic
    end
  end
  
  class CoffeeMachineServiceInterface
    def clean_coffee_machine
      # clean coffee machine logic
    end
  
    def fill_coffee_beans
      # fill coffee beans logic
    end
  
    def fill_water_supply
      # fill water logic
    end
  
    def fill_sugar_supply
      # fill sugar logic
    end
  end
  
  class Person
    def initialize
      @coffee_machine = CoffeeMachineUserInterface.new
    end
  
    def make_coffee
      @coffee_machine.select_drink_type
      @coffee_machine.select_portion
      @coffee_machine.select_sugar_amount
      @coffee_machine.brew_coffee
    end
  end
  
  class Staff
    def initialize
      @coffee_machine = CoffeeMachineServiceInterface.new
    end
  
    def serv
      @coffee_machine.clean_coffee_machine
      @coffee_machine.fill_coffee_beans
      @coffee_machine.fill_water_supply
      @coffee_machine.fill_sugar_supply
    end
  end
  # With this design segregated in two interfaces, 
  # we’ve avoided unused methods and now have two smaller interfaces with methods that perform specific tasks