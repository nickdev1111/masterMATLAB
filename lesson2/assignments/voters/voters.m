function database = voters(database, varargin)
    % valid input
    if mod(length(varargin),2)==0 % checks if even
        % existing database
        if isempty(database)
            existing = 0;
        else
            existing = size(database,2);
        end
        for ii = 1:nargin-1
            if mod(ii,2)==0
                database(ii/2+existing).ID = varargin{ii};
            else
                database((ii-1)/2+1+existing).Name = varargin{ii};
            end
        end
    % invalid input return original db
    else
        database = database;
    end
end