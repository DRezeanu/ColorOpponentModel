function lens_OD = lensage(age)

densityConstants = [0.446, 0.000031, 14.19, 10.68, 0.057, 273, 0.998, 0.000063, 2.13, 0.029, 370, 0.059, 0.000186, 11.95, 0.021, 325, 0.016, 0.000132, 1.43, 0.008, 325, 0.111];

WL = (400:5:700);

lens_OD = zeros(1,length(WL));

for x = 1:length(WL)
    lens_OD(x) = (densityConstants(1)+densityConstants(2)*age^2)*(400/WL(x))^4+densityConstants(3)*densityConstants(4)*exp(-((densityConstants(5)*(WL(x)-densityConstants(6)))^2))+...
        (densityConstants(7)-densityConstants(8)*age^2)*densityConstants(9)*exp(-((densityConstants(10)*(WL(x)-densityConstants(11)))^2))+(densityConstants(12)+densityConstants(13)*age^2)...
        *densityConstants(14)*exp(-((densityConstants(15)*(WL(x)-densityConstants(16)))^2))+(densityConstants(17)+densityConstants(18)*age^2)*densityConstants(19)...
        *exp(-((densityConstants(20)*(WL(x)-densityConstants(21)))^2))+densityConstants(22);
end