for i=1:10
    if i==7
        break;
    end
    disp(i);
    pause(1);
end
pause(2);
sum=0;
for i=1:100
    sum=sum+i;
end
int2str sum;
disp (sum);
