
using FunctionLib: FunctionHolder 
using Test

@info "Empty argument test"
f1(x; a = 1) = x^2 + a
fh1 = FunctionHolder(f1, (1), Dict(:a => 1))
@test fh1() == 2

@info "Argument provide test"
f2(x; a = 1) = x^2 + a
fh2 = FunctionHolder(f1, (), Dict(:a => 1))
@test fh2(2) == 5

@info "Complex function test"
f3(x, y, z, w; a = 1, b = 2, c = 3, d = 4) = (x - a) ^ 2 + (y - b) ^ 2 + (z - c) ^ 2 + (w - d) ^ 2
fh3 = FunctionHolder(f3, (3, 4), Dict(:a => 1, :b => 2, :c => 3, :d => 4))
@test fh3(1, 2) == 0