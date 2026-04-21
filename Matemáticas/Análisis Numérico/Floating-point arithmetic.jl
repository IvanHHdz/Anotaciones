### A Pluto.jl notebook ###
# v0.20.17

using Markdown
using InteractiveUtils

# ╔═╡ 716a94e0-3d10-11f1-055e-edf2f5eeb4be
md"""
# Floating-point arithmetic

To represent a fraction number in binary, you can use the definition of a floating-point number. This is:

```math
f = (-1)^{sign} 2^{E- bias} \left(1 + \sum_{i=1}^{n} b_{n-i}2^{-i}\right)
```

Looks weird, I know. But it's quite simple.

Let's see an example usign $n=23$ ans $bias = 127$. This is the IEEE standard for a half-precision floating-point number (`Float16`).

So, we have:

```math
\underbrace{0}_{sign} \underbrace{10000000}_{E}\;\underbrace{0101 1011 1111 0000 1010 100}_{bits}
```

Now, the sign bit is used as is. So:
```math
(-1)^{sign} = 1
```

The exponent $E$ goes to decimal and get evaluate. Since $10000000_2$ in decimal is $(parse(Int, "10000000", base=2)), we have:
```math
2^{E - bias} = 2^{128-127} = 2
```

Now, the last one is a bit more complex. You must to iterate over it:

"""

# ╔═╡ a1acfe1d-d406-4268-81d3-08fb517692f3
function to_dec(bin)
	frac = 1
	for i in 1:length(bin)
		frac += parse(Int, bin[i]) * 2.0^(-i)
	end
	return frac
end;

# ╔═╡ dc53e6b8-fda6-411e-b755-42170e305e65
md"""
So we have:
```math
1 + \sum_{i=1}^{23} b_{23-i}2^{-i} = 1 + \frac 12 (0) + \frac 14 (1) + \frac 18 (0) + \frac 1{16} (1) \cdots
```

The result is: $(to_dec("01011011111100001010100"))

Now, everything together is: $(1 * 2 * (1.3591408729553223)). That's approx ℯ.
"""

# ╔═╡ 34ba505c-79b1-466c-9954-c4ad5a724679
function to_bin(d)
	v = d
	for i in 1:23
		nv = v - 2.0^(-i)
		if (nv ≥ 0)
			v = nv
			print(1)
		else
			print(0)
		end
		if i%4 == 0
			print(" ")
		end
	end
end;

# ╔═╡ e3052184-ca2b-4072-8bf2-34753fea14c6
md"""
And you can do it backwards. Just set te sign, set the exponent as your fraction is between 1 and 2, and get the other stuff.
"""

# ╔═╡ aac17336-f44a-45f9-96de-3f3033f0a0dc
begin
	print("0")
	print(" ")
	print(string(128, base=2))
	print(" ")
	to_bin(0.359140914)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.6"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─716a94e0-3d10-11f1-055e-edf2f5eeb4be
# ╟─a1acfe1d-d406-4268-81d3-08fb517692f3
# ╟─dc53e6b8-fda6-411e-b755-42170e305e65
# ╟─34ba505c-79b1-466c-9954-c4ad5a724679
# ╟─e3052184-ca2b-4072-8bf2-34753fea14c6
# ╟─aac17336-f44a-45f9-96de-3f3033f0a0dc
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
