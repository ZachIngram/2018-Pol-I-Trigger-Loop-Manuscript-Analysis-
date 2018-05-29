 1function [parlim,residual,resnorm,params,chisq,RMSD]=exp_fit(time,data,parlim,weights,ntp)

OPT = optimset('lsqcurvefit');
%OPT = optimset(OPT,'Display','iter'); 
OPT = optimset(OPT, 'Tolfun', 1e-6);
OPT = optimset(OPT,'display','off');
OPT=optimset(OPT,'MaxIter',50,'MaxFunEvals',100);
OPT = optimset(OPT, 'TolX', 1e-6); 
OPT = optimset('UseParallel',true);




[x,resnorm,wres,exitflag,output,lambda,jac]=lsqnonlin('res_calc',parlim(1:end,3),parlim(1:end,2),parlim(1:end,4),OPT,parlim,data,time,weights,ntp);
%disp(output);
parlim(1:end,3)=x;
%residual=wres.*weights;
residual=wres;
RMSD=sqrt(sum(sum(residual.^2))/numel(data));
chisq=sum(sum(wres.^2));
params=parlim(1:end,3);
%{
tsim=logspace(log10(time(1)),log10(time(end)),1e3)';
export=[tsim langmuir(params,tsim,indvar2)];
subplot(2,1,1)
semilogx(export(1:end,1),export(1:end,2:end),nonzeros(time),nonzeros(data),'o')
subplot(2,1,2)
semilogx(nonzeros(time),residual.*nonzeros(weights),tsim,zeros(length(tsim),1))
%}