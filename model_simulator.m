function [sims,y]=model_simulator(params,time,ntp)
%params=params';
%Ode23s applies initial conditions to first element of time vector - this
%is why output vectors are normalized by looking at the second element to
%the end.  Make sure time vectors are established such that the first
%element is zero.
options=odeset('abstol',1e-12,'jacobian','off');

n=length(ntp);

[r,c]=size(params);
if r>c
    params=params';
end

[r,c]=size(time);
if r>c
    time=time';
end

tsim=[0, time];


for i=1
   [t,y]=ode23s('scheme_1',tsim,[(1e-6)*params(17) ntp(i) 0 0 0 0 (1e-6)*(1-params(17)) 0 ],options,[params(1:16)]);
        mat = [y(2:end,1)+y(2:end,3)+y(2:end,7) y(2:end,4)+y(2:end,5) y(2:end,6) y(2:end,8)];
        total = sum(mat,2);
            for j = 1:4;
                sims(:,j) = mat(:,j )./total;  
            end 

end 

for i=2
   [t,y]=ode23s('scheme_2',tsim,[(1e-6)*params(17) ntp(i) 0 0 0 0 (1e-6)*(1-params(17)) 0 ],options,[params(1:16)]);
            mat = [y(2:end,1)+y(2:end,3)+y(2:end,7) y(2:end,4)+y(2:end,5) y(2:end,6) y(2:end,8)];
        total = sum(mat,2);
            for j = 1:4;
                sims_ind(:,j) = mat(:,j )./total;  
            end 
  sims = horzcat(sims,sims_ind);
end 

for i=3
   [t,y]=ode23s('scheme_3',tsim,[(1e-6)*params(17) ntp(i) 0 0 0 0 (1e-6)*(1-params(17)) 0 ],options,[params(1:16)]);
            mat = [y(2:end,1)+y(2:end,3)+y(2:end,7) y(2:end,4)+y(2:end,5) y(2:end,6) y(2:end,8)];
        total = sum(mat,2);
            for j = 1:4;
                sims_ind(:,j) = mat(:,j )./total;  
            end 
  sims = horzcat(sims,sims_ind);
end 

for i=4
   [t,y]=ode23s('scheme_4',tsim,[(1e-6)*params(17) ntp(i) 0 0 0 0 (1e-6)*(1-params(17)) 0 ],options,[params(1:16)]);
            mat = [y(2:end,1)+y(2:end,3)+y(2:end,7) y(2:end,4)+y(2:end,5) y(2:end,6) y(2:end,8)];
        total = sum(mat,2);
            for j = 1:4;
                sims_ind(:,j) = mat(:,j )./total;  
            end 
  sims = horzcat(sims,sims_ind);
end 

for i=5
   [t,y]=ode23s('scheme_5',tsim,[(1e-6)*params(17) ntp(i) 0 0 0 0 (1e-6)*(1-params(17)) 0 ],options,[params(1:16)]);
           mat = [y(2:end,1)+y(2:end,3)+y(2:end,7) y(2:end,4)+y(2:end,5) y(2:end,6) y(2:end,8)];
        total = sum(mat,2);
            for j = 1:4;
                sims_ind(:,j) = mat(:,j )./total;  
            end 
  sims = horzcat(sims,sims_ind);
  
  sims = [sims(:,2:4) sims(:,6:8) sims(:,10:12) sims(:,14:16) sims(:,18:20)];
  
end 