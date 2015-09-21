function pe001_time(test_number)
%
%

time_a = zeros(test_number,1);
time_b = time_a;
time_c = time_a;
time_d = time_a;
for test = 1:test_number
    tic;
    pe001_a(1000);
    time_a(test) = toc;
    
    tic;
    pe001_b(1000);
    time_b(test) = toc;
    
    tic;
    pe001_c(1000);
    time_c(test) = toc;
    
    tic;
    pe001_d(1000);
    time_d(test) = toc;
end

time_all = {'pe001_a', mean(time_a), std(time_a);...
            'pe001_b', mean(time_b), std(time_b);...
            'pe001_c', mean(time_c), std(time_c);...
            'pe001_d', mean(time_d), std(time_d)};
time_all = sortrows(time_all,2);
fprintf('%16s | %20s | %20s | %8s\n','Método','Tempo médio (s)','Desvio do tempo (s)','Fator');
fprintf('-----------------+----------------------+----------------------+----------\n');
for test = 1:4
    fprintf('%16s | %20e | %20e | %8.4f\n',time_all{test,1},time_all{test,2},time_all{test,3},time_all{test,2}/time_all{1,2});
end
