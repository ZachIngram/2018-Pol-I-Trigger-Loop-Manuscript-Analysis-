function [res]=res_calc(paropt,parlim,data,time,weights,ntp)
params=parlim;
for n=1:length(params(:,1))
    if params(n,1)==0
        params(n,3)=params(n,3);
    else
        params(n,3)=paropt(n);
    end
end
res=(data-model_simulator(params(1:end,3),time,ntp))./weights;