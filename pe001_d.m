function answer = pe001_d(number_max)
% Método baseado PAs.

series_length = floor(number_max/3);
answer = 3/2*series_length*(series_length+1);
series_length = floor(number_max/5);
answer = answer + 5/2*series_length*(series_length+1);
series_length = floor(number_max/15);
answer = answer - 15/2*series_length*(series_length+1);