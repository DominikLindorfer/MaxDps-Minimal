--
-- Copyright (c) 2023 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2023-03-08T07:57:50Z",numCharacters=38006,db={}}
local F

F = function() provider.db["아즈샤라"]={0,"Killix","Scarlety","니스티르","닉카","션리","이터누스"} end F()

F = nil
RaiderIO.AddProvider(provider)
