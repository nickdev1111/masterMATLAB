function database = voters(database, varargin)
    % valid input
    if mod(length(varargin),2)==0 % checks if even
        % existing database
        if isempty(database)
            existing = 0;
        else
            existing = size(database,2);
        end
        % if return temp for bad input
        temp = database;
        for ii = 1:nargin-1
            % even indices = 
            if mod(ii,2)==0
                % if the ID is 'char' or 'string' then exit
                if (ischar(varargin{ii}) || isstring(varargin{ii}) || ...
                        varargin{ii}~=fix(varargin{ii}) || varargin{ii} < 0)
                    database=temp;
                    return
                % else record the ID
                else
                    database(ii/2+existing).ID = varargin{ii};
                end
            else
                % if the ID is not 'char' or 'string' then exit
                if ~ischar(varargin{ii}) && ~isstring(varargin{ii})
                    database=temp;
                    return
                % else record the Name
                else
                    database((ii-1)/2+1+existing).Name = string(varargin{ii});
                end
            end
        end
    end
end