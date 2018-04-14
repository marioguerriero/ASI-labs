function f = plotbeta(alp,bet,f)
% Plots the beta pdf with parameters alp and bet and returns handle to
% figure created.
% f = plotbeta(alp,bet,f)
% Optional - passing a figure number as a third argument, plots onto that
% figure.
x = [0:0.01:1];
if ~exist('f')
    f = figure;
end

figure(f);

plot(x,betapdf(x,alp,bet),'k','linewidth',2);