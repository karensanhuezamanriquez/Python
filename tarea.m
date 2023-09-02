%tarea dinámica

%Calcular la salinidad absoluta y la temperatura conservativa

% usar las funciones gsw_SA_from_SP y gsw_CT_from_t

%Latitude    Longitude          
%32 29.41 S  72 30.76 W


%Calculates Conservative Temperature of seawater from in-situ
%temperature.
k10=readmatrix("KN38D_P06_010.txt");
k12=readmatrix("KN38D_P06_012.txt");

CT10 = gsw_ct_from_t(k10(:,3),k10(:,2),k10(:,1))
[SA10, in_ocean10] = gsw_SA_from_SP(k12(:,3),k12(:,1),-72,-32)

CT12 = gsw_ct_from_t(k12(:,3),k12(:,2),k12(:,1))
[SA12, in_ocean12] = gsw_SA_from_SP(k12(:,3),k12(:,1),-72,-32)


%p_i = [min(p):max(p)]; 
%[SA_i, CT_i] = gsw_SA_CT_interp(SA,CT,p,p_i); 
p_ref = 2000 
gsw_SA_CT_plot(SA,CT,p_ref,'\itS\rm_A - \Theta plot') 
hold on 
plot(SA_i,CT_i,'b-')

