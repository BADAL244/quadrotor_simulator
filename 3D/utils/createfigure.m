function createfigure(YMatrix1)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 13-Feb-2018 15:30:36

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','measure','LineStyle',':');
set(plot1(2),'DisplayName','improved');
set(plot1(3),'DisplayName','filtered');

% Create ylabel
ylabel('y','FontSize',24);

% Create xlabel
xlabel('time','FontSize',24);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[4096.77419354839 4861.75115207373]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-17.4124513618677 182.782101167315]);
box(axes1,'on');
grid(axes1,'on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',20);

