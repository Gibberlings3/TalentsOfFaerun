function dwGrantDefaultProficiencies()
if (dwIsChargen or dwIsDualClassing or characters[currentID].level.xp==0) then
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
	if kit>0 then
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
		createCharScreen:OnProficiencyPlusMinusButtonClick(%discard_stat%, true)	
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