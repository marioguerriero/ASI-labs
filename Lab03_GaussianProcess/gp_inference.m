function [ post_m, post_V, nll ] = gp_inference( obs_x, obs_t, new_x, params)
    
    %% Unpack parameters
    lengthscale = params(1);
    variance = params(2);
    noise = params(3);

    n = length(obs_x);
    kern_obs = ....;
    
    % When computing the posterior mean, we would like to avoid evaluating 
    % "alpha = inv(kern_obs)*obs_t" directly. The Cholesky decomposition can
    % be applied using the following procedure.
    % 1. Compute the lower-triangular Cholesky decomposition of "kern_obs" ("L")
    % 2. Compute alpha as "alpha = L'\(L\obs_t)"
    
    alpha = ...;

    kern_obs_pred = ...;
    kern_pred = ...;

    post_m = kern_obs_pred' * alpha;
    
    % Similarly, when computing "v = inv(kern_obs)*kern_obs_pred", 
    % employ the Cholesky decomposition as described above.
    
    post_V = ...;
    
    % negative log-likelihood
    nll = 0;
end

