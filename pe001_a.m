function answer = pe001_a(number_max)
% Método baseado em testes.

answer = 0;
for number = 1:number_max
    if rem(number,3)==0 || rem(number,5)==0
        answer = answer + number;
    end
end