# This principle is based on the fact that a derived class must be substitutable by its base class
# lets take an example 
class Role
    def to_s; 'default' end
  end

  class Admin < Role
    def to_s; 'admin' end
  end
  
  class User < Role
    def to_s; 'user' end
  end
  
  class RoleLogger
    def print_role(role)
      p "role: #{role}"
    end
  end
  
  logger = RoleLogger.new
  logger.print_role(Role.new)  # => "role: default"
  logger.print_role(Admin.new) # => "role: admin"
  logger.print_role(User.new)  # => "role: user"
    
# In this example, the RoleLogger#print_role method takes a role argument.
# In our case the Admin and User classes derivate from Role.
# We can easily interchange these classes without breaking the expected behaviour of the RoleLogger#print_role method.