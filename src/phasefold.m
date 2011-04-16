function [S,f,q]=phasefold(s,T)
%PHASEFOLD Phase fold input f with a priori period T.
s=s(:);
L=numel(s);
N=floor(0.5*L/T);
s=reshape(s(1:N*2*T),2*T,[]);
S=mean(s,2);
S=S-mean(S);
f=abs(fft(S)).^2;
q=f(3)/sum(f(1:T));
return