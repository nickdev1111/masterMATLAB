function out = grader(s, t, varargin)
    for ii=1:nargin-2
        out = isequal(s(varargin{ii}),t(varargin{ii}));
        if ~out
            return;
        end
    end
end