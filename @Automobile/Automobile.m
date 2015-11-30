classdef Automobile < handle
  % The Automobile class becomes the property of a user. It stores all the informatin 
  % relevant to a car.
    properties
        Make = ''
        Model = ''
        Year = []
        Color = '' 
        MPG = []
        Type=''
        StartTime;
        EndTime;
%       Picture = ''

    end
    
    methods
        function auto = Automobile(ma,mo,y,co,mpg,type,starttime,endtime)
           auto.Make = ma;
           auto.Model = mo;
           auto.Year = y;
           auto.Color = co;
           auto.MPG=mpg;
           auto.Type=type;
           auto.StartTime=starttime;
           auto.EndTime=endtime;
        end 
        
        function info = getInfo(auto)
            info = {auto.Type,auto.Make,auto.Model,auto.Color,auto.Year,...
                auto.MPG,auto.StartTime,auto.EndTime};
        end
        
        function updateInfo(auto,ma,mo,y,co,mpg,type,starttime,endtime)
           auto.Make = ma;
           auto.Model = mo;
           auto.Year = y;
           auto.Color = co;
           auto.MPG=mpg;
           auto.Type=type;
           auto.StartTime=starttime;
           auto.EndTime=endtime;
        end
        
    end %methods
end %classdef