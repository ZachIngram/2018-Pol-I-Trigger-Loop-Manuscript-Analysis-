tic
[param_vals,best_chisq,current_par_vals,chi_values,saved_chisq,saved_pars,RMSD,indvar1_sim,simvals]=simple_ga_edit(params,generations,pop_size,data_mean,weights,crossover,stdevs,best,mut_probability,cross_probability,elite,decay,nlls_size,time,ntp);

save('FinishedWorkspace');

toc