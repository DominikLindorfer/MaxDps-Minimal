local E, L, C = select(2, ...):unpack()

if E.isClassic then E.changelog = [=[
v1.14.3.2743
	version update

v1.14.3.2724
	Fixed sync for cross realm group members

v1.14.3.2722
	Classic Era re-release. (Build 44834)
]=]
elseif E.isBCC then E.changelog = [=[
v2.5.4.2722
	Fixed sync for cross realm group members

Full list of changes can be found in the CHANGELOG file
]=]
elseif E.isWOTLKC then E.changelog = [=[
v3.4.1.2743
	Cooldowns will reset when an encounter ends
	Fixed nil error
	Jan 31, 2023 Hotfixes

v3.4.1.2742
	Titan-Forged Rune of Determination merged to PvP Trinket

Full list of changes can be found in the CHANGELOG file
]=]
else E.changelog = [=[
v10.0.5.2743
	Fixed Army of the Damned CDR by Epidemic
	Fixed Blessing of Santuary CD
	Fixed Kleptomania icon texture
	Feb 6, 2023 Hotfixes

v10.0.5.2742
	Fixed missing talents after Patch 10.0.5
	Avatar for Protection spec has been added as a separate spell

Full list of changes can be found in the CHANGELOG file
]=]
end
