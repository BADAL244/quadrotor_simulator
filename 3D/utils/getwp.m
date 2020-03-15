function w = getwp(form, a, phi)
if strcmp(form, 'angle') && (nargin == 1)
    w = [0    0   0;
        0    0   2;
        % 0    2   2;
        0    4   2;
        % 0    2   2;
        0    0   1.1]';
elseif strcmp(form, 'helix') && (nargin == 1)
    r = 5; h_max = 16.5;
    t = pi*(0:0.4:h_max);
    x = r*cos(t);
    y = r*sin(t);
    z = t/pi;
    w = [x; y; z];
elseif strcmp(form, 'maneuvre') && (nargin > 1)
    w = [0    0   2;
        0    a   2;
        a*sin(phi)    a*(1-cos(phi))   2]';
end
end