function exgauss_plot(y,X)
% EXGAUSS_PLOT plots a histogram of the data and a line plot of the mode
%  
% DESCRIPTION 
% Plots a histogram of the data and a line plot of the ex-Gaussian
% distribution with best-fitting parameters
%  
% SYNTAX 
% EXGAUSS_PLOT(y,X); 
% y             - Nx1 vector of observed response times
% X             - 1x3 best-fitting parameter values (mu,sigma,tau)
%  
% ......................................................................... 
% Bram Zandbelt, bramzandbelt@gmail.com 
% $Created : Tue 07 Jan 2014 14:04:32 CST by bram 
% $Modified: Wed 08 Jan 2014 10:42:02 CST by bram

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 1. VARIABLE HANDLING
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% 1.1. Define dynamic variabls
% ========================================================================= 

% 1.1.1. Get rid of zeros and NaN in data, ensure a column vector
% ------------------------------------------------------------------------- 
y           = nonzeros(nonnans(y(:)));
x           = colon(min(y),1,max(y))';

% 1.1.2. Compute number of bins, frequency, and bin centers
% ------------------------------------------------------------------------- 
nBin        = ceil(sqrt(numel(y)));
[N,binCtr]  = hist(y,nBin);
binWidth    = range(binCtr)/nBin;


% 1.1.3. Normalized ex-Gaussian PDF
% ------------------------------------------------------------------------- 
f           = exgauss_pdf(y,X);
fNorm       = numel(y)*f*binWidth;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 2. Plot the data
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

hold on;

% 2.1. Histogram of RT data, white bins
% ========================================================================= 
bar(binCtr,N,'w');

% 2.2. Normalized ex-Gaussian probability density function, red line
% ========================================================================= 
plot(x,fNorm,'r-','LineWidth',2);

% 2.3. Labels
% =========================================================================
xlabel('Response time (ms)');
ylabel('Frequency')
title(sprintf('\\mu = %.2f, \\sigma = %.2f, \\tau = %.2f',X));