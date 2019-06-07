function info = determine(x,sliced, percent, nofrag)
if isa(percent,'string)') || isa(percent,'char)')
   error('Trzeci argument funkcji nie mo¿e byæ typu string lub char')
elseif isa(percent, 'table')
    error('Trzeci argument funkcji nie mo¿e byæ tablic¹')
elseif isa(percent, 'struct')
    error('Trzeci argument funkcji nie mo¿e byæ strutur¹')
elseif(percent > 1 || percent < 0)
    error('Trzeci argument musi znajdowaæ siê w przedziale (0, 1)')
end

[m1 ,n1] = size(x);
if (m1 >1 && n1 >1)
error('Badany sygna³ musi mieæ postaæ jednowymiarowego wektora')
end

[m2 ,n2] = size(sliced);
if (~(m2 == nofrag))
error('Podzielony sygna³ musi mieæ postaæ cztero-wierszowej macierzy')
end


info = false;
m_sig = parameters(x)
for i = 1 : length(sliced(:,1))
s_sig = parameters(sliced(i, :))
cond_1 = range_fit(m_sig.expected_value, s_sig.expected_value, percent);
cond_2 = range_fit(m_sig.root_mean_square, s_sig.root_mean_square, percent);
cond_3 = range_fit(m_sig.standard_deviation, s_sig.standard_deviation, percent);
cond_4 = range_fit(m_sig.variance, s_sig.variance, percent);
cond_5 = range_fit(m_sig.skewness, s_sig.skewness, percent);
cond_6 = range_fit(m_sig.kurtosis, s_sig.kurtosis, percent);
if( cond_1 && cond_2 && cond_3 && cond_4 && cond_5 && cond_6 )
    info = true;
else
    info = false;
    break ;
end
end
end