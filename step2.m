%plot data 

% Run Code 
%%
%plot data 

% data_mean=[mean_10uM mean_20uM mean_250uM mean_1000uM];


% weights = [sd_10uM sd_20uM sd_250uM sd_1000uM];


figure(1)
%%
subplot(2,2,1)
semilogx(time,data_mean(:,1:4:end),'.','MarkerSize',30);
title('10mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

subplot(2,2,2)
semilogx(time,data_mean(:,2:4:end),'.','MarkerSize',30);
title('11mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

subplot(2,2,3)
semilogx(time,data_mean(:,3:4:end),'.','MarkerSize',30);
title('CA','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

subplot(2,2,4)
semilogx(time,data_mean(:,4:4:end),'.','MarkerSize',30);
title('12mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')


figure(2)
%%

subplot(2,2,1)
errorbar(time,data_mean(:,1),weights(:,1));
hold on
errorbar(time,data_mean(:,5),weights(:,5));
errorbar(time,data_mean(:,9),weights(:,9));
errorbar(time,data_mean(:,13),weights(:,13));
errorbar(time,data_mean(:,17),weights(:,17));
set(gca,'xscale','log')
title('10mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')


subplot(2,2,2)
errorbar(time,data_mean(:,2),weights(:,2));
hold on
errorbar(time,data_mean(:,6),weights(:,6));
errorbar(time,data_mean(:,10),weights(:,10));
errorbar(time,data_mean(:,14),weights(:,14));
errorbar(time,data_mean(:,18),weights(:,18));
set(gca,'xscale','log')
title('11mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

subplot(2,2,3)
errorbar(time,data_mean(:,3),weights(:,3));
hold on
errorbar(time,data_mean(:,7),weights(:,7));
errorbar(time,data_mean(:,11),weights(:,11));
errorbar(time,data_mean(:,15),weights(:,15));
errorbar(time,data_mean(:,19),weights(:,19));
set(gca,'xscale','log')
title('CA','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

subplot(2,2,4)
errorbar(time,data_mean(:,4),weights(:,4));
hold on
errorbar(time,data_mean(:,8),weights(:,8));
errorbar(time,data_mean(:,12),weights(:,12));
errorbar(time,data_mean(:,16),weights(:,16));
errorbar(time,data_mean(:,20),weights(:,20));
set(gca,'xscale','log')
title('12mer','FontSize',20)
set(gca,'fontsize',15)
xlabel('time (seconds)','FontSize',15,'FontWeight','bold');
ylabel('Normalized Fraction of RNA','FontSize',15,'FontWeight','bold');
set(gca,'ticklength',3*get(gca,'ticklength'))
legend('10 uM ATP','20 uM ATP','50 uM ATP','250 uM ATP','1000 uM ATP')

