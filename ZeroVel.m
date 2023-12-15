clear all;
close all;
clc;


% Define the symbolic variables
syms x y 
mu = 0.1;
% Given equation

p=1;
for x=-2:0.002:2
    q=1;
    for y=-2:0.002:2
        S(p,q)=(x^2 + y^2) + 2*(1 - mu) / sqrt((x + mu)^2 + y^2) + 2*mu / sqrt((x - (1 - mu))^2 + y^2);
        q=q+1;
    end
    p=p+1;
end


a1=3.6;
p=1;
Z1=nan(2001);
for x=-2:0.002:2
    q=1;
    for y=-2:0.002:2
        if S(p,q)<a1
            Z1(p,q)=S(p,q);
        end
        q=q+1;
    end
    p=p+1;
end


x=-2:0.002:2;
y=-2:0.002:2;


% Create a contour plot
figure;
surf(x, y, Z1', 'EdgeColor','none');
title(['Contour Plot of Potential Energy (\mu = ' num2str(mu) ') and (C = ' num2str(a1) ')']);
xlabel('x');
ylabel('y');
grid on;
colorbar;
view(0,90)
caxis([0,30]);

xlim([-1.6,1.6])
ylim([-1.6,1.6])
hold on
plot3([1-mu, -mu], [0, 0], [0, 0], '*', 'MarkerSize', 10);
hold off

a2=3.47;
p=1;
Z2=nan(2001);
for x=-2:0.002:2
    q=1;
    for y=-2:0.002:2
        if S(p,q)<a2
            Z2(p,q)=S(p,q);
        end
        q=q+1;
    end
    p=p+1;
end


x=-2:0.002:2;
y=-2:0.002:2;


% Create a contour plot
figure;
surf(x, y, Z2', 'EdgeColor','none');
title(['Contour Plot of Potential Energy (\mu = ' num2str(mu) ') and (C = ' num2str(a2) ')']);
xlabel('x');
ylabel('y');
grid on;
colorbar;
view(0,90)
caxis([0,30]);
xlim([-1.6,1.6])
ylim([-1.6,1.6])
hold on
plot3([1-mu, -mu], [0, 0], [0, 0], '*', 'MarkerSize', 10);
hold off

a3=3.1
p=1;
Z3=nan(2001);
for x=-2:0.002:2
    q=1;
    for y=-2:0.002:2
        if S(p,q)<a3
            Z3(p,q)=S(p,q);
        end
        q=q+1;
    end
    p=p+1;
end


x=-2:0.002:2;
y=-2:0.002:2;


% Create a contour plot
figure;
surf(x, y, Z3', 'EdgeColor','none');
title(['Contour Plot of Potential Energy (\mu = ' num2str(mu) ') and (C = ' num2str(a3) ')']);
xlabel('x');
ylabel('y');
grid on;
colorbar;
view(0,90)
caxis([0,30]);
xlim([-1.6,1.6])
ylim([-1.6,1.6])

hold on
plot3([1-mu, -mu], [0, 0], [0, 0], '*', 'MarkerSize', 10);
hold off

a4=3
p=1;
Z4=nan(2001);
for x=-2:0.002:2
    q=1;
    for y=-2:0.002:2
        if S(p,q)<a4
            Z4(p,q)=S(p,q);
        end
        q=q+1;
    end
    p=p+1;
end


x=-2:0.002:2;
y=-2:0.002:2;


% Create a contour plot
figure;
surf(x, y, Z4', 'EdgeColor','none');
title(['Contour Plot of Potential Energy (\mu = ' num2str(mu) ') and (C = ' num2str(a4) ')']);
xlabel('x');
ylabel('y');
grid on;
colorbar;
view(0,90)
caxis([0,30]);
xlim([-1.6,1.6])
ylim([-1.6,1.6])


hold on
plot3([1-mu, -mu], [0, 0], [0, 0], '*', 'MarkerSize', 10);
hold off
grid on;





