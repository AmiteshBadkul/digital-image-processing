x1 = randi([0, 10], [4,4]);
x2 = randi([0, 10], [4,4]);

fprintf('X1:\n');
disp(x1)
fprintf('X2: \n');
disp(x2)

% addition 
fprintf('Addition is: \n')
disp(x1+x2)

fprintf('Subtraction is: \n')
disp(x1-x2)

fprintf('Matrix Multiplication is \n:')
disp(x1*x2)

fprintf('Array Multiplication is \n:')
disp(x1.*x2)

fprintf('Array Right Division is: \n')
disp(x1./x2)

fprintf('Array Left Division is: \n')
disp(x1.\x2)

fprintf('Matrix Right Division is: \n')
disp(x1/x2)

fprintf('Matrix Left Division is: \n')
disp(x1\x2)