function Q=phasescan(s,T)
Q=zeros(size(T));
for n=1:length(T)
    [~,~,Q(n)]=phasefold(s,T(n));
end
return