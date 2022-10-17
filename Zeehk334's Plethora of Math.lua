function math.iPart(a)
	for i = 1, #tostring(a), 1 do
		if string.sub(tostring(a), i, i) == "." then
			return tonumber(string.sub(tostring(a), 1, i - 1))
		else
			if i == #tostring(a) then
				return a
			end
		end
	end
end

function math.fPart(a)
	for i = 1, #tostring(a), 1 do
		if string.sub(tostring(a), i, i) == "." then
			return tonumber(string.sub(tostring(a), i + 1, #tostring(a)))
		else
			if i == #tostring(a) then
				return a
			end
		end
	end
end

function math.trunc(a)
	math.iPart(a)
end

function math.E()
	return 2.718281828459045
end

function math.log2(a)
	return math.log(a)/math.log(2)
end

function math.log2E()
	return math.log2(math.E())
end

function log10E()
	return math.log10(math.E())
end

function math.ln(a)
	return math.log(a)/math.log(math.E())
end

function math.ln2()
	return math.log(2)/math.log(math.E())
end

function math.ln10()
	return math.log(10)/math.log(math.E())
end

function math.sqrt1_2()
	return math.sqrt(1/2)
end

function math.sqrt2()
	return math.sqrt(2)
end

function math.cbrt(a)
	return (math.sqrt(a))^3
end

function math.expm1(a)
	return math.E()^a -1
end

function math.sign(a)
	if a ~= 0 or a ~= -0 then
		if a > 0 then
			return 1
		elseif a < 0 then
			return -1
		end
	elseif a == 0 or a == -0 then
		return a
	end
end

function math.hypot(a, b)
	return math.sqrt(a^2 + b^2)
end

function gcd(a, b)
    return b == 0 and a or gcd(b, a%b)
end
