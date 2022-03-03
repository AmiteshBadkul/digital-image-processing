
x = [0 4 15 2 1 13 1 2 3 2 8 1 0 1 0];

h = [1 2 3 2 8];

% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Z(i)=0;
    for j=1:m
        if(i-j+1>0)
            Z(i)=Z(i)+X(j)*H(i-j+1);
        else
        end
    end
end
fprintf('Convolution  is:')
disp(Z)

% correlation
h = flip(h);
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Z(i)=0;
    for j=1:m
        if(i-j+1>0)
            Z(i)=Z(i)+X(j)*H(i-j+1);
        else
        end
    end
end

disp('Correlation is:')
disp(Z)