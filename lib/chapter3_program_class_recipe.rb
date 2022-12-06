#CLASS INTERFACE

class PasswordManager2
    def initialize
        #initialize empty hash ready to store data
    end
    def valid?(password)
        #checks if password is valid 
    end
    def add(service, password)
        #add service (key) and corresponding password (value) to hash
        #if service and password doesn't exist already else show error
        #store date time added_on
    end
    def services
        #return list of the services (keys) saved in the hash for which password (value) isn't empty
    end
    def password_for(service)
        #return password (value) for the service (key) given
    end
    def remove(service)
        #remove service and corresponding password from hash
    end
    def sort_by(string)
        #return list of services sorted by service or added_on
    end
    def update(service, password)
        #error unless service exists
        #error if password exists
        #update service with new password
    end
end

#EXAMPLES

#create new instance of a password manager
my_password_manager = PasswordManager2.new  

#add some services and their corresponding passwords to this password manager
my_password_manager.add("Ask Theeves", "stolengoods123!")
my_password_manager.add("Rye Space", "breadbin456$")
my_password_manager.add("FetaVerse", "greekcheese789%")

#show all services saved in this password manager
my_password_manager.services

#show password for a given service
my_password_manager.password_for("Rye Space")

#show all services saved in this password manager sorted by added_on/service
my_password_manager.sort_by("added_on")
my_password_manager.sort_by("service")

#update password for given service
my_password_manager.update("FetaVerse", "whitecheese789&")

#delete service and corresponding password
my_password_manager.remove("Rye Space")