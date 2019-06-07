function logical = range_fit(var1, var2, r)
if isa(r,'string)') || isa(r,'char)')
   error('Trzeci argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(r, 'table')
    error('Trzeci argument funkcji nie mo¿e byæ tablic¹')
elseif isa(r, 'struct')
    error('Trzeci argument funkcji nie mo¿e byæ strutur¹')
elseif(r > 1 || r < 0)
    error('Trzeci argument musi znajdowaæ siê w przedziale (0, 1)')
end

if isa(var1,'string)') || isa(var1,'char)')
   error('Pierwszy argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(var1, 'table')
    error('Pierwszy argument funkcji nie mo¿e byæ tablic¹')
elseif isa(var1, 'struct')
    error('Pierwszy argument funkcji nie mo¿e byæ strutur¹')
end

if isa(var1,'string)') || isa(var1,'char)')
   error('Drugi argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(var1, 'table')
    error('Drugi argument funkcji nie mo¿e byæ tablic¹')
elseif isa(var1, 'struct')
    error('Drugi argument funkcji nie mo¿e byæ strutur¹')
end

r1 = 1 - r;
r2 = 1 + r;
if(var1 > 0 && r1 * var2 <= var1 && r2 * var2 >= var1)
    logical = true ;
elseif(var1 < 0 && r2 * var2 <= var1 && r1 * var2 >= var1)
    logical = true ;
elseif(var1 == 0 && (r1 * var2 <= var1 && r2 * var2 >= var1) && (r2 * var2 <= var1 && r1 * var2 >= var1))  
    logical = true;
elseif(isnan(var1) && isnan(var2))
    logical = true;
else
    logical = false;
end
end

