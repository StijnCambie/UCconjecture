︠3ae58ff3-0c36-4197-8f69-0ff80629e8c0s︠
def H(x):
    if x <=0:
        return 0
    if x>=1:
        return 0
    else:
        return -(x*log(x,2)+(1-x)*log(1-x,2))
︡24cc56b2-25e4-4796-9cc3-d0838648c45c︡{"done":true}
︠aec42851-587e-4168-be05-294ce63e790bs︠
plot( H(x^2)/(x*H(x)),(0,1))

︡ca769eb0-b5fc-4170-b08a-e25bda68086d︡{"file":{"filename":"/tmp/tmpop84i6_q/tmp_t_202t8c.svg","show":true,"text":null,"uuid":"00379564-e92e-4d73-98f5-7597ea1dda6d"},"once":false}︡{"done":true}
︠89bd5b04-4763-4adb-8cd9-908843c389eds︠
def ff(x):
    return(H(x)*(2-H(x))-H(2*x-x^2))
a=0.3
b=0.4
for n in range(0,1000):
    if ff((a+b)/2)<0:
        a=round((a+b)/2,100)
    else: 
        b=round((a+b)/2,100)
round(ff(b),200)
b
round(b,200)
a=(1-H(b))/(2-H(b))
c=a+(1-a)*b
round(c,100)
plot(ff,(0,1))
︡c26235c1-49bd-425c-bb07-1170e34666df︡{"stdout":"0.0\n"}︡{"stdout":"0.3294547385030371\n"}︡{"stdout":"0.3294547385030371\n"}︡{"stdout":"0.38234553336670285\n"}︡{"file":{"filename":"/tmp/tmpop84i6_q/tmp_66k2thzf.svg","show":true,"text":null,"uuid":"8b094a5a-4abb-4233-b530-cca4cfc1c63d"},"once":false}︡{"done":true}
︠8173f28d-ac62-4ac8-8b4e-dfe43173ed22s︠
derivative((1-(c-x)/(1-x))^2*H(2*x-x^2)-(1-(c-x)/(1-x))*H(x),x)
︡26c94967-0733-4d2c-acc7-634c339d499a︡{"stdout":"-2*((x - 1)*log(x^2 - 2*x + 1)/log(2) - (x - 1)*log(-x^2 + 2*x)/log(2))*((x - 0.38234553336670285)/(x - 1) - 1)^2 + 2*((x^2 - 2*x + 1)*log(x^2 - 2*x + 1)/log(2) - (x^2 - 2*x)*log(-x^2 + 2*x)/log(2))*((x - 0.38234553336670285)/(x - 1) - 1)*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1)) - ((x - 0.38234553336670285)/(x - 1) - 1)*(log(x)/log(2) - log(-x + 1)/log(2)) + (x*log(x)/log(2) - (x - 1)*log(-x + 1)/log(2))*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1))"}︡{"stdout":"\n"}︡{"done":true}
︠35970402-67e6-4c31-905e-26cd1e47c411s︠
def g1(x):
    return( -2*((x - 1)*log(x^2 - 2*x + 1)/log(2) - (x - 1)*log(-x^2 + 2*x)/log(2))*((x - c)/(x - 1) - 1)^2 + 2*((x^2 - 2*x + 1)*log(x^2 - 2*x + 1)/log(2) - (x^2 - 2*x)*log(-x^2 + 2*x)/log(2))*((x - c)/(x - 1) - 1)*((x - c)/(x - 1)^2 - 1/(x - 1)) - ((x - c)/(x - 1) - 1)*(log(x)/log(2) - log(-x + 1)/log(2)) + (x*log(x)/log(2) - (x - 1)*log(-x + 1)/log(2))*((x - c)/(x - 1)^2 - 1/(x - 1)))
︡1879b46e-07c7-4da3-acf9-63e786f22853︡{"done":true}
︠3d41a264-1aba-4509-8f6d-4087958adfee︠

︡1db6a8d0-a32d-43a7-8c84-cabde29dffba︡
︠62c7a01c-d068-4037-bca0-4f181469eb1ds︠
derivative((1-2*(c-x)/(1-x))-(1-(c-x)/(1-x))*H(x),x)
︡fbb78405-b4cc-4a3b-bba7-e2d9e3ac4ea8︡{"stdout":"-((x - 0.38234553336670285)/(x - 1) - 1)*(log(x)/log(2) - log(-x + 1)/log(2)) + (x*log(x)/log(2) - (x - 1)*log(-x + 1)/log(2))*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1)) + (2*x - 0.7646910667334057)/(x - 1)^2 - 2/(x - 1)\n"}︡{"done":true}
︠44eee256-200e-41d8-8032-a502313ffd6fs︠
def g2(x):
    return(-((x - c)/(x - 1) - 1)*(log(x)/log(2) - log(-x + 1)/log(2)) + (x*log(x)/log(2) - (x - 1)*log(-x + 1)/log(2))*((x - c)/(x - 1)^2 - 1/(x - 1)) + (2*x - 2*c)/(x - 1)^2 - 2/(x - 1))
︡e8867d62-9bef-4a52-8f59-e704f9347f06︡{"done":true}
︠bb093565-b756-420e-bc9e-279858d52ea0s︠

eps=-g1(b)/(-g1(b)+g2(b))
round(eps,30)
def f(a,b):
    return((1-eps)*(1-a)^2*H(2*b-b^2)+eps*(1-2*a)*H(min(2*b,0.5))-(1-a)*H(b))
def g(b):
    return f((c-b)/(1-b),b)

plot(g,(0.,c))
plot(g,(0.329,0.33))
︡e31fb181-7781-4c32-bcfa-953f62f8a828︡{"stdout":"0.035606980437447984\n"}︡{"file":{"filename":"/tmp/tmpop84i6_q/tmp_1mr84rxs.svg","show":true,"text":null,"uuid":"a418eb9e-0766-4933-b878-5ff0a3b77831"},"once":false}︡{"file":{"filename":"/tmp/tmpop84i6_q/tmp_hk9ogyvu.svg","show":true,"text":null,"uuid":"70d5c58e-495b-46e8-89fa-6a610b61bc77"},"once":false}︡{"done":true}
︠35ac6e37-7e6f-4ced-b9d7-22f420a32cbes︠
eps=-g1(b)/(-g1(b)+g2(b))

derivative(derivative(((1-eps)*(1-(c-x)/(1-x))^2*H(2*x-x^2)+eps*(1-2*(c-x)/(1-x))-(1-(c-x)/(1-x))*H(x)),x),x)
︡bec66620-995d-48c7-8492-2c02ef9ec42f︡{"stdout":"-2*((x - 0.38234553336670285)/(x - 1) - 1)^2*(2*(x - 1)^2/((x^2 - 2*x + 1)*log(2)) - 2*(x - 1)^2/((x^2 - 2*x)*log(2)) + log(x^2 - 2*x + 1)/log(2) - log(-x^2 + 2*x)/log(2))*(-0.013997324783026843/((-1.511235368213045/log(2) + 2.7473841370162266)*log(2)) + 1) + 8*((x - 1)*log(x^2 - 2*x + 1)/log(2) - (x - 1)*log(-x^2 + 2*x)/log(2))*((x - 0.38234553336670285)/(x - 1) - 1)*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1))*(-0.013997324783026843/((-1.511235368213045/log(2) + 2.7473841370162266)*log(2)) + 1) - 2*((x^2 - 2*x + 1)*log(x^2 - 2*x + 1)/log(2) - (x^2 - 2*x)*log(-x^2 + 2*x)/log(2))*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1))^2*(-0.013997324783026843/((-1.511235368213045/log(2) + 2.7473841370162266)*log(2)) + 1) - 4*((x^2 - 2*x + 1)*log(x^2 - 2*x + 1)/log(2) - (x^2 - 2*x)*log(-x^2 + 2*x)/log(2))*((x - 0.38234553336670285)/(x - 1) - 1)*((x - 0.38234553336670285)/(x - 1)^3 - 1/(x - 1)^2)*(-0.013997324783026843/((-1.511235368213045/log(2) + 2.7473841370162266)*log(2)) + 1) + 2*(log(x)/log(2) - log(-x + 1)/log(2))*((x - 0.38234553336670285)/(x - 1)^2 - 1/(x - 1)) - 2*(x*log(x)/log(2) - (x - 1)*log(-x + 1)/log(2))*((x - 0.38234553336670285)/(x - 1)^3 - 1/(x - 1)^2) + ((x - 0.38234553336670285)/(x - 1) - 1)*(1/((x - 1)*log(2)) - 1/(x*log(2))) - 0.027994649566053686*((2*x - 0.7646910667334057)/(x - 1)^3 - 2/(x - 1)^2)/((-1.511235368213045/log(2) + 2.7473841370162266)*log(2))\n"}︡{"done":true}
︠2243e8eb-eaa1-4992-b932-4b7375ce3096︠









