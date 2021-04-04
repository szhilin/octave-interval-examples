X = [1 1; 1 1.5; 1 2];                    # X values
y = [1.5; 1.4; 2.5];                          # y values with bounded errors 
epsilon = 0.75;                           # y error bound

## Plot irproblem
[irproblem] = ir_problem(X, y, epsilon);  # Define interval regression problem
[vertices] = ir_beta2poly(irproblem)

figure
ir_scatter(irproblem);                    # Plot interval data
[beta, exitcode] = ir_outer(irproblem)    # Estimate regression parameters
figure
ir_plotbeta(irproblem);                    # Plot interval data
hold on
ir_plotrect(beta) 
figure
ir_plotmodelset(irproblem) 

## Plot irproblem1
lb = [-inf 0];
[irproblem1] = ir_problem(X, y, epsilon, lb);  # Define interval regression problem
[vertices1] = ir_beta2poly(irproblem1)

[beta1, exitcode1] = ir_outer(irproblem1)    # Estimate regression parameters
figure
ir_plotbeta(irproblem1);                    # Plot interval data
hold on
ir_plotrect(beta1) 
figure
ir_plotmodelset(irproblem1) 
