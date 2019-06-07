function sliced = slice(x, n, e)
[m ,l] = size(x);
if (m >1 && l >1)
error('Badany sygna³ musi zostaæ podany w postaci jednowymiarowego wektora')
end
if isa(n,'string)') || isa(n,'char)')
   error('Drugi argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(n, 'table')
    error('Drugi argument funkcji nie mo¿e byæ tablic¹')
elseif isa(n, 'struct')
    error('Drugi argument funkcji nie mo¿e byæ struktur¹')
end
if(n < 1 )
    error('Drugi parametr musi byæ dodatni¹ liczb¹ ca³kowit¹') 
end
if isa(e,'string)') || isa(e,'char)')
   error('Drugi argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(e, 'table')
    error('Drugi argument funkcji nie mo¿e byæ tablic¹')
elseif isa(e, 'struct')
    error('Drugi argument funkcji nie mo¿e byæ strutur¹')
elseif(e < 0 || e >=1 )
    error('Trzeci parametr musi zawieraæ siê w przedziale [0, 1)') 
end

sig_len = length(x);
param = (1 - e);
slice_len = floor(sig_len / ((1 - e) * double(n) + e));

for i = 1 : n
    if(i == 1)
       sliced(i, :) = x(1 : slice_len + 1);
    else
       sliced(i, :) = x(floor((i-1) * param * slice_len) : floor((1 + (i-1) *param) * slice_len));
       
    end
end

end

