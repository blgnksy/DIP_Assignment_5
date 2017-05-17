function [normal_pdf_noise,log_normal_pdf,exp_pdf]=question_1_a(mu,sigma,gamma)
J=im2double(zeros(512,512));
normal_pdf_noise=(1/(2*pi))*exp(-1*(randn(size(J))^2));
log_normal_pdf=exp(-1*(lognrnd(mu,sigma,size(J))))*(1/(sigma*sqrt(2*pi)));
exp_pdf=gamma*exp(-1*gamma*exprnd(gamma,size(J)));
end