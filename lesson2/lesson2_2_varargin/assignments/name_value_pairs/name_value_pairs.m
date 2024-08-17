function out = name_value_pairs(varargin)
    if mod(length(varargin),2)==0 && ~isempty(varargin)
    counter=1;
    temp = cell(length(varargin)/2,2);
        for ii=1:2:length(varargin)
            if ~ischar(varargin{ii})
                out = cell({});
                return;
            else
                temp(counter,1)=varargin(ii);
                temp(counter,2)=varargin(ii+1);
                counter = counter + 1;
            end
        end
        out = temp;
    else
        out = cell({});
    end
end