--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2022-12-29T07:14:44Z",numCharacters=23021,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 6
F = function() provider.lookup[1] = ";\4;\8;\16" end F()

F = nil
RaiderIO.AddProvider(provider)
