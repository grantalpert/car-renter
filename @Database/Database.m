classdef Database < handle
   % This class stores and handles all interactions with Users 
    properties
        UserAccounts = {};
    end
    
    methods
        function database = Database()
        end
        
        function AddUser(database,user,index)
            if nargin>=3
                database.UserAccounts{index}=user;
            else
                database.UserAccounts{end+1}=user;
            end
        end
        
        function db=DeleteUser(db,user)
            for i = 1:length(db.UserAccounts)
                if db.UserAccounts{i}==user;
                    db.UserAccounts(i)=[];
                    break
                end
            end
        end
                
        function names=getUserNames(db)
            names=[];
            for i=1:length(db.UserAccounts)
                user=db.UserAccounts{i};
                names{end+1}= user.Name;
            end
            names=sort(names);
        end
        
        function UserAndIndex=findUser(db,name)
            for i=1:length(db.UserAccounts)
                currentuser=db.UserAccounts{i};
                currentname=currentuser.Name;
                if strcmp(currentname ,name)
                    UserAndIndex={currentuser,i};
                    break
                end
            end
            
        end
        
        function results=getSearchResults(db,type,zipcode)
            names=getUserNames(db);
            results={};
            for i = 1:length(names)
                    UserAndIndex=findUser(db,names{i});
                    userinfo=getInfo(UserAndIndex{1});
                    autoinfo=getInfo(userinfo{6});
                    if autoinfo{1}==type
                        if str2double(userinfo{4})==str2double(zipcode)
                            lr=size(results,1)+1;
                            results{lr,1}=userinfo{1};
                            for j = 2:6
                                results{lr,j}=autoinfo{j};
                            end
                            results{lr,7}=datestr(autoinfo{7});
                            results{lr,8}=datestr(autoinfo{8});
                        end
                    end
                                      
            end
            results{1,end+1}=false;
        end
    end    
end %classdef