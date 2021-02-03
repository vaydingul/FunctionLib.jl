
using FunctionLib: FunctionHolder 
using Test


f1(x; a = 1) = x^2 + a
ff1 = FunctionHolder(f1, (1), Dict(:a => 1))

@test ff1() == 2