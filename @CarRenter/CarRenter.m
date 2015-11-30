classdef CarRenter < handle
  % This is the main class that handles the user interface and has a database class
  % attached
    properties (Access=private)
        Figure
        GUI_Size = 'Medium';
        GUI_SizeNum = 2;
        GUI_Color = 'Red';
        GUI_ColorNum = 4;
        Database
        SelectedUsers={};
    end
    
    methods
        function renter = CarRenter(databasename)
            close all
            openGUI(renter);
            loadDatabase(renter,databasename);
        end       
        
        function loadDatabase(renter,name)
            data=load(name);
           % assignin('base','data',data);
            renter.Database=data.database;
        end
        
        function saveDatabase(renter,name)
            database=renter.Database;
            save(name,'database');
        end
        
    end %methods
end %classdef