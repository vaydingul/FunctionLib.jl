export FunctionHolder


# Struct definition
struct FunctionHolder
	
	f::Function
	pos_args # Positional arguments
	key_args # Keyword arguments
	FunctionHolder() = new()
end

# Callable object definitions
(f::FunctionHolder)(args...) = f.f(args..., f.pos_args...; f.key_args...)
(f::FunctionHolder)() = f.f(f.pos_args...; f.key_args...)