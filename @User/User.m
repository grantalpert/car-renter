classdef User < handle
   % This User class had the leasers information along with their
   % automobile class as a property.
    properties
        Name
        PhoneNumber
        Email
        ZipCode
        Password
        Automobile
       
    end
    
    methods
        function user = User(name,pn,email,zc,pw,auto)
            user.Name = name;
            user.PhoneNumber = pn;
            user.Email=email;
            user.ZipCode = zc;
            user.Password = pw;
            user.Automobile = auto;
        end       
        
        function info = getInfo(user)
            info = {user.Name,user.PhoneNumber,user.Email,user.ZipCode,user.Password,user.Automobile};
        end
        
        function updateInfo(user,name,pn,email,zc,pw,auto)
            user.Name = name;
            user.PhoneNumber = pn;
            user.Email=email;
            user.ZipCode = zc;
            user.Password = pw;
            user.Automobile = auto;
        end
    end 
end 