--local ipairs = ipairs

local util = { }

function util.find_on_screen(s, n)
	for _, c in ipairs(s.clients) do
		if string.match(c.class, n) then
			return c
		end
	end

	return nil
end

return util
