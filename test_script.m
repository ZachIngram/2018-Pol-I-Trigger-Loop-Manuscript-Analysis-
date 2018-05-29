subplot(2,2,1);
semilogx(SimTime,sims(:,1));
hold on
% semilogx(time,sci_data(:,2));
hold off
title('10mer')

subplot(2,2,2);
semilogx(SimTime,sims(:,2));
hold on
% semilogx(time,sci_data(:,3));
hold off
title('11mer')

subplot(2,2,3);
semilogx(SimTime,sims(:,3));
hold on
% semilogx(time,sci_data(:,4));
hold off
title('12mer')

subplot(2,2,4);
semilogx(SimTime,sims(:,4));
hold on
% semilogx(time,sci_data(:,5));
hold off
title('CA')