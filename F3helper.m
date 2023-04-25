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
## @deftypefn {} {@var{retval} =} F3helper (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Admin <Admin@DESKTOP-4386PS0>
## Created: 2023-04-24

function retval=F3helper(a,p,N)% Funksioni ndihmes i cili llograit vleren e pikselit duke perdorur formulen F3
  retval =0;
   shuma = 0;
    for i=1:(N*N)
      shuma = shuma+power(a(i),p);
    endfor
    retval = round(power((shuma/(N*N)),(1/p)));%Vlera perfundimtare
  return;
endfunction
