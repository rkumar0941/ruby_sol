#intially we have two type of emp and we want to send them mail acc. to there role 

class Employee
    def initialize(email)
        @email = email
    end

    #send_email_to_emp
    def send_mail
        #find by email , let emp is xyz
        if xyz.role==supervisor
            #send super-mail (detailed - mail)
        else
            #send emp mail (normal - mail)
        end
        
    end
end

let emp = Employee.new(rohitthakur@yopmail.com)
emp.send_mail

#this code is working well , but the issue is if we add new type of emp in department , then we have to add more 
#conditional statements ,
#so this is now great approch .

#So, let us create a separate class for two different email templete 


class Super_templete
    def initialize(email)
        @email = email
    end

    def send
        #send super templete
    end
    
end

class Normal_templete
    def initialize(email)
        @email = email
    end

    def send
        #send normal templete
    end

end

TYPE = {
    'supervisior' => Super_templete,
    'normal' => Normal_templete
}

class Employee
    def initialize(email, type)
        @email = email
        @type = type
    end

   
    def send_mail
        TYPE[@type].new(@email).generate()  
    end
end

emp = Employee.new(rohit@yopmail.com, normal)
emp.send_mail

