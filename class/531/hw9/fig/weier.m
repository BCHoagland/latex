hold on;

x = (-1.5 : 0.001 : 1.5);

pts(x, 1/2);
pts(x, 1/8);
pts(x, 1/32);

plot(x, zeros(1, length(x)), 'k');

ylim([-0.5 1]);
legend('g=f_1', 'f_2', 'f_3');

function [y] = pts(x, int, c)
    z = zeros(1, length(x));
    for i = 1:length(x)
        z(i) = x(i);
    end

    y = zeros(1, length(x));
    for i = 1:length(x)
        if z(i) < 0
            while z(i) < -int
                z(i) = z(i) + 2*int;
            end
        else
            while z(i) > int
                z(i) = z(i) - 2*int;
            end
        end
        y(i) = abs(z(i));
    end

    plot(x, y, 'LineWidth', 1);
end
