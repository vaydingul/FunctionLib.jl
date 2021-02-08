export FunctionHolder


# Struct definition
struct FunctionHolder
	
	f::Function
	pos_args # Positional arguments
	key_args # Keyword arguments
	#FunctionHolder() = new()
end

# Callable object definitions
(f::FunctionHolder)(args...) = f.f(args..., f.pos_args...; f.key_args...)
(f::FunctionHolder)() = f.f(f.pos_args...; f.key_args...)


function show(io::IO, fh::FunctionHolder)

	println("\nFunction Holder:")
	println("Function => ", fh.f)
	println("Positional Arguments => ", fh.pos_args)
	println("Keyword Arguments => ", fh.key_args, "\n")
	
end
	
function show(io::IO, ::MIME"text/plain", fh::FunctionHolder)
		
		show(io, fh)
	
end
