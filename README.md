# Exgauss
---

## Overview
---
Exgauss is a MATLAB toolbox for fitting the ex-Gaussian distribution to data (e.g. response times).

## Getting started
---

### Requirements
---
* [MATLAB](http://www.mathworks.com)
* [MATLAB Statistics Toolbox](http://www.mathworks.com/products/statistics/)
* [MATLAB Optimization Toolbox](http://www.mathworks.com/products/optimization/)
* [fminsearchbnd.m](http://www.mathworks.com/matlabcentral/fileexchange/8277-fminsearchbnd-fminsearchcon)


### Intstallation
---
Get the code as follows:

```
git clone ssh://
```

### Usage
---


Fit the ex-Gaussian model to the data:

```
[X,fVal,exitFlag,solverOutput] = exgauss_fit(y);
```

Plot a histogram of the data and a line plot of the best-fitting ex-Gaussian model:


```
figure;hold on
exgauss_plot(y,X);
```

## Colophon
===

### Version
---
Version 1.0 - January 2014

### Contact
---
E-mail: bramzandbelt@gmail.com  
Web: www.bramzandbelt.com  

### License
---
&copy; 2014  Bram B. Zandbelt

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>

### References
---
Lacouture, Y., & Cousineau, D. (2008). How to use MATLAB to fit the ex-Gaussian and other probability functions to a distribution of response times. Tutorials in Quantitative Methods for Psychology, 4(1), 35-45.  

Lewandowsky, S., & Farrell, S. (2010). Computational modeling in cognition: Principles and practice. Sage.