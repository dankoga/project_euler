function answer = pe001_b(number_max)
% Método baseado em loops.

answer = 0;
for number = 3:3:number_max;
    answer = answer + number;
end
for number = 5:5:number_max;
    answer = answer + number;
end
for number = 15:15:number_max;
    answer = answer - number;
end