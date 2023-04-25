## Copyright (C) 2023 Admin
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} F3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Admin <Admin@DESKTOP-4386PS0>
## Created: 2023-04-24



function y=F3(I,p,N)
  if(rem(N,2)==0||N<0)%Kontrollon madhesine e filterit
    disp 'Madhesia e filterit duhet te jete numer tek pozitiv'
  else
    [m n]=size(I);
    if (N<=m && N<=n)
      s=N/2+0.5;
      r=N/2-0.5;
      for i= s:(m-r)%Kontrollon ecjen e filterit ne imazh
        for j = s:(n-r)
          B=I(i-r:i+r, j-r:j+r);%Ruan vlerat te cilat eshte duke i mbuluar filteri
          a= double(B(1:(N*N)));
          b=double(B(1:(N*N)));
          I(i,j)= F3helper(a,p,N);%Implementim i formules F2
        endfor
      endfor
      imshow(I)
    else
      disp"Filteri eshte me i madh se rezulucioni i imaxzhit"
    endif
    endif
endfunction
