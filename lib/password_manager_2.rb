class PasswordManager2
    def initialize
        @password_data = {}
    end
    
    def valid?(password)    # not used in this program but carried over from last validator and first password_manager
        password.length > 7 && password.count("!@$%&") > 0
    end
    
    def service_exists?(service)
        @password_data.has_key?(service)
    end
    
    def password_exists?(password)
        @password_data.any? { |serv, data| data['password'] == password }
    end
    
    def add(service, password)
        if service_exists?(service)
            "ERROR: Service names must be unique"
        else
            if password_exists?(password)
                "ERROR: Passwords must be unique"
            else
                @password_data.merge!(service => {'password' => password, 'added_on' => Time.now})
            end
        end
    end
    
    def services
        @password_data.keys
    end
    
    def remove(service)
        @password_data.delete(service)
    end
    
    def update(service, password)
        if service_exists?(service)
            if password_exists?(password)
                "ERROR: Passwords must be unique"
            else
                @password_data[service]['password'] = password
                @password_data[service]['added_on'] = Time.now
            end
        else
            "ERROR: Service already exists, please use .add function"
        end
    end
    
    def password_for(service)
        @password_data[service]['password']
    end
    
    def sort_by(string)
        if string == "service"
            @password_data.keys.sort
        else
            @password_data.sort_by { |k, v| v['added_on'] }.to_h.keys
        end
    end
end