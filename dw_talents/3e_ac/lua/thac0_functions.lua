
function dwTHAC0(index)
	if index then
		thactxt = 20 - index
		if thactxt >=0 then
			return "+" .. thactxt
		else
			return thactxt
		end
	else
		return index
	end
end

function dwSwapPlusMinus(index,prefix)
		value=index
		value=string.gsub(value,prefix .. "%+","blook")
		value=string.gsub(value,prefix .. "%-",prefix .. "+")
		value=string.gsub(value,"blook",prefix .. "-")
		return value
end

function dwUnwurble(index)
		return string.gsub(value,"wurble","+")
end

function dwTHAC0TextSwap(index,oldstring,newstring) 
		value=index	
		_,_,num_old=string.find(value,oldstring..": ".."%s*(%d+)")
		num_new = 20 - num_old
		value=string.gsub(value,oldstring..": ".."%s*%d+",oldstring..": ".."wurble"..num_new)
		return value
end

function dwACTextSwap(index,oldstring,newstring)
		value=index
		_,_,num_old=string.find(value,oldstring..": ".."%s*(%d+)")
		num_new = 10 - num_old
		value=string.gsub(value,oldstring..": ".."%s*%d+",oldstring..": ".."wurble"..num_new)
		return value
end

function dwTHAC0Details(index)
	if index then
		value= dwSwapPlusMinus(dwTHAC0TextSwap(index,"%bab%","%bab%"),": ")
		return dwUnwurble(value)
	else
		return index
	end
end

function dwAC(index)
	if index then
		return 20 - index
	else
		return index
	end
end

function dwACDetails(index)
	if index then
		value= dwSwapPlusMinus(dwACTextSwap(index,"%STRREF_GUI_TOOLTIP_ARMOR_CLASS%","%armor%"),": ")
		return dwUnwurble(value)
	else
		return index
	end

end

function dwCharacterDetails(index) -- most of this has been dealt with by editing lower-level functions
	if index then
		value=index
		value=dwSwapPlusMinus(value,"%engine_string_STRREF_GUI_TOOLTIP_ARMOR_CLASS%"..": ")
		return value
	else
		return index
	end
end

function dwCharacterDetailsFullSwap(index) -- the BG2 version is just generated neat by the engine, I think
	if index then
		value=index
		value= dwTHAC0TextSwap(value,"%bab%","%bab%")
		value= dwTHAC0TextSwap(value,"%ab%","%ab%")
		value=dwSwapPlusMinus(value,"%STRREF_GUI_MIXED_ACSLASHING%"..": ")
		value=dwSwapPlusMinus(value,"%STRREF_GUI_MIXED_ACCRUSHING%"..": ")
		value=dwSwapPlusMinus(value,"%STRREF_GUI_MIXED_ACPIERCING%"..": ")
		value=dwSwapPlusMinus(value,"%STRREF_GUI_MIXED_ACMISSILE%"..": ")
		value=dwSwapPlusMinus(value,"%STRREF_GUI_TOOLTIP_ARMOR_CLASS%"..": ")
		return dwUnwurble(value)
	else
		return index
	end
end

function dwMinus(index)
	return 0 - index
end

function dwTempStatTHAC0(old)
	if(tempStats[id] == nil) then
		return "-"
	end
	local new = tempStats[id]['THAC0']
	local score = old - new
	if(score == 0) then
		return "-"
	end
	if(score < 0) then
		return "^R" .. dwTHAC0(new) .. "^-"
	end
	if(score > 0) then
		return "^G" .. dwTHAC0(new) .. "^-"
	end
end

function dwTempStatAC(old)
	if(tempStats[id] == nil) then
		return "-"
	end
	local new = tempStats[id]['AC']
	local score = old - new
	if(score == 0) then
		return "-"
	end
	if(score < 0) then
		return "^R" .. dwAC(new) .. "^-"
	end
	if(score > 0) then
		return "^G" .. dwAC(new) .. "^-"
	end
end
