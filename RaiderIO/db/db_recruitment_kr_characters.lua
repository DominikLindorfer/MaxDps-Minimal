--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2023-01-24T07:03:20Z",numCharacters=33932,db={}}
local F

F = function() provider.db["아즈샤라"]={0,"폭풍의아크"} end F()

F = nil
RaiderIO.AddProvider(provider)
