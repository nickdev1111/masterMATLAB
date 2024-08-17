function out = mixit(M,weights)
    % M = K-by-N matrix of uint16 values where N is the number of 
    % tracks and K is the number of samples per track
    % weights = N double scalars i.e. the weights of the tracks
    % [K, N] = size(M);
    out = (double(M/65535)-1) * weights'
    if max(out)>1
        out = out/max(out);
    end
    % K-element column vector of doubles representing a single-
    % track audio recording obtained by mixing the individual 
    % tracks according to the static weights
    out = M();
end