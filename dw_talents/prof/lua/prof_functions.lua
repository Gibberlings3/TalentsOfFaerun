function dwGrantDefaultProficiencies()
	dw_first_level_profs=false -- emphatically not local as I want subrace to see it
	if (dwIsChargen or dwIsDualClassing ) then
		dw_first_level_profs=true
	else
		dw_first_level_profs=true
		for	k,prof in pairs (chargen.proficiency) do
			if (prof.value>0) and (prof.id>=89) and (prof.id<=109) then
				dw_first_level_profs=false
			end
		end	
	end

	if (dw_first_level_profs) then
		classid,kitid=dwFindClassKit()
		count=0
		if dwIsChargen then
			if (dwRaces and dwRaces[currentChargenRace]) then
				raceid=dwRaces[currentChargenRace].id
			else
				raceid=chargen.races[currentChargenRace].id
			end
		else
			raceid=dwFindRace(2)
		end
		
		if dwRaceWeapons[raceid] then
			raceweapons= dwRaceWeapons[raceid]
		else
			raceweapons={}
		end
		kitweapons={}
		if kitid>0 then
			if dwKitWeapons[kitid] then
				kitweapons=dwKitWeapons[kitid]
			end
		end
		profIsAvailable={}
		for	k,prof in pairs (chargen.proficiency) do
			if (prof.value<prof.max) then
				profIsAvailable[prof.id]=true -- some kits, like kensai, don't get access to all base-class weapons
			end
		end
		signalprofcount=dwProfSignalNumByClass[classid]
		if dwKitExtraProfs[kitid] then
			signalprofcount=signalprofcount - dwKitExtraProfs[kitid]
		end
		if dwProfKitRedirect[kitid] then
			classid=dwProfKitRedirect[kitid]
		end
		for prof=89,115 do
			if dwStartingProfs[prof] then
				startingprof=dwStartingProfs[prof][classid]
			else
				startingprof=false
			end
			if (startingprof or raceweapons[prof]) and profIsAvailable[prof] then
				createCharScreen:OnProficiencyPlusMinusButtonClick(prof, true)
				count=count+1
			end	
			if (kitweapons[prof]) and profIsAvailable[prof] then
				createCharScreen:OnProficiencyPlusMinusButtonClick(prof, true)
				count=count+1
			end	
		end
		while count<signalprofcount do
			createCharScreen:OnProficiencyPlusMinusButtonClick(125, true)	
			count=count+1
		end
  	end
end

function dwDefaultProficiencyGuard(row)
	prof=chargen.proficiency[dwProficiencyLookup[row]]
	
	if dwIsChargen then
		if (dwRaces and dwRaces[currentChargenRace]) then
			raceid=dwRaces[currentChargenRace].id
		else
			raceid=chargen.races[currentChargenRace].id
		end
	else
		raceid=dwFindRace(2)
	end
	
	classid,kitid=dwFindClassKit()
	if dwProfKitRedirect[kitid] then
		classid=dwProfKitRedirect[kitid]
	end
	num_allowed=0
	if dwStartingProfs[prof.id] then -- if not it's a style proficiency or similar		
		if dwStartingProfs[prof.id][classid] then
			num_allowed=1
		end
	end	
	if dwRaceWeapons[raceid] then
		if dwRaceWeapons[raceid][prof.id] then
			num_allowed=1
		end
	end
	if kit>0 then
		if dwKitWeapons[kitid] then
			if dwKitWeapons[kitid][prof.id] then
				num_allowed = num_allowed + 1
			end
		end		
	end
	return prof.value>num_allowed
end



function dwProfMinusFrame()

	if dwDefaultProficiencyGuard(rowNumber) then 
		return getMinusFrame(8) 
	else 
		return 3 
	end

end