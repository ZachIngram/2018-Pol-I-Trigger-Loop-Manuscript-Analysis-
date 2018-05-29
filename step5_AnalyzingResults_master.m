
SimTime = logspace(-3,1,500);
SimTCourses = model_simulator(param_vals, SimTime,ntp); 

markersize = 30;
linewidth = 3; 



%%

figure('units','normalized','outerposition',[0 0 1 1])
fig1 = figure(1);

clrs = lines(5);

n = 1;


a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(1,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
set(gca,'xscale','log')
hold on
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(1,:));


n = 4;
b = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(2,:));
set(get(get(b, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(2,:));

n = 7;
c = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(3,:));
set(get(get(c, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(3,:));

n = 10;
d = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(4,:));
set(get(get(d, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(4,:));

n = 13;
e = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(5,:));
set(get(get(e, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(5,:));


title('11mer')
xlabel('time (s)');
ylabel('Fraction of RNA');
xlim([1E-3 1E2])
xticks([0.001 0.01 0.1 1 10 100])
xticklabels({'10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}'})
%ylim([-0.005 1.5*max(data_mean(:,n))])
ax = gca; 
ax.LineWidth = 2
 set(gca,'fontsize',28,'ticklength',3*get(gca,'ticklength'),'color','none')
hold off 

legend('show','Orientation','vertical')
legend({'10 \muM ATP','20 \muM ATP','50 \muM ATP','250 \muM ATP','1000 \muM ATP'},'Color','none','FontSize',20)




hold on 





%%
n = 2;
figure(2)

a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(1,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
set(gca,'xscale','log')
hold on
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(1,:));


n = 5;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(2,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(2,:));

n = 8;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(3,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(3,:));

n = 11;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(4,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(4,:));

n = 14;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(5,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(5,:));

title('CAmer')
xlabel('time (s)');
ylabel('Fraction of RNA');
xlim([1E-3 1E2])
xticks([0.001 0.01 0.1 1 10 100])
xticklabels({'10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}'})
% ylim([-0.005 1.2*max(data_mean(:,n))])
ax = gca; 
ax.LineWidth = 2
 set(gca,'fontsize',28,'ticklength',3*get(gca,'ticklength'),'color','none')
hold off 

legend('show','Orientation','vertical')
legend({'10 \muM ATP','20 \muM ATP','50 \muM ATP','250 \muM ATP','1000 \muM ATP'},'Color','none','FontSize',20)
hold on 


%%
n = 3;
figure(3)

a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(1,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
set(gca,'xscale','log')
hold on
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(1,:));


n = 6;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(2,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(2,:));

n = 9;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(3,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(3,:));

n = 12;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(4,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(4,:));

n = 15;
a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(5,:));
set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(5,:));

title('12mer')
xlabel('time (s)');
ylabel('Fraction of RNA');
xlim([1E-3 1E2])
xticks([0.001 0.01 0.1 1 10 100])
xticklabels({'10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}'})
ylim([-0.005 1])
ax = gca; 
ax.LineWidth = 2
 set(gca,'fontsize',28,'ticklength',3*get(gca,'ticklength'),'color','none')
hold off 

legend('show','Orientation','vertical')
legend({'10 \muM ATP','20 \muM ATP','50 \muM ATP','250 \muM ATP','1000 \muM ATP'},'Color','none','FontSize',20)
hold on 

% %%
% n = 4;
% figure(4)
% 
% a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(1,:));
% set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
% set(gca,'xscale','log')
% hold on
% semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(1,:));
% 
% 
% n = 8;
% a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(2,:));
% set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
% semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(2,:));
% 
% n = 12;
% a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(3,:));
% set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
% semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(3,:));
% 
% n = 16;
% a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(4,:));
% set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
% semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(4,:));
% 
% n = 20;
% a = errorbar(time,data_mean(:,n),weights(:,n),'.','MarkerSize',25,'Color',clrs(5,:));
% set(get(get(a, 'Annotation'), 'LegendInformation'), 'IconDisplayStyle', 'off');
% semilogx(SimTime,SimTCourses(:,n),'linewidth',linewidth,'Color',clrs(5,:));
% 
% title('12 mer')
% xlabel('time (s)');
% ylabel('Fraction of RNA');
% xlim([1E-3 1E2])
% xticks([0.001 0.01 0.1 1 10 100])
% xticklabels({'10^{-3}', '10^{-2}', '10^{-1}', '10^{0}', '10^{1}', '10^{2}'})
% % ylim([-0.005 1.2*max(data_mean(:,n))])
% ax = gca; 
% ax.LineWidth = 2
%  set(gca,'fontsize',28,'ticklength',3*get(gca,'ticklength'),'color','none')
% hold off 
% 
% legend('show','Orientation','vertical')
% legend({'10 \muM ATP','20 \muM ATP','50 \muM ATP','100 \muM ATP','200 \muM ATP','1000 \muM ATP'},'Color','none','FontSize',20)
% hold on 



% 
% 
% savefig(fig1,'fig1')
% savefig(fig2,'fig2')
% savefig(fig3,'fig3')
% 





