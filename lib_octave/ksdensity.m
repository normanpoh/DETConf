function [f,x] = ksdensity(data, max_n_com, min_n_com)

if nargin<2,
  max_n_com = 2;
end;

FJ_params = { 'Cmax', max_n_com, 'Cmin', 1, 'thr', 1e-2, 'animate', 0, 'verbose', 1, 'covtype',0};
labels = ones(size(data,1),1);
bayesS = gmmb_create(data, labels, 'FJ', FJ_params{:});
x=sort(data);
c=1;
f = gmmb_pdf(x, bayesS(c).mu, bayesS(c).sigma, bayesS(c).weight );
