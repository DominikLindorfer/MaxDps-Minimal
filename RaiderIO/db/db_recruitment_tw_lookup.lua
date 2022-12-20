--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-12-19T06:41:24Z",numCharacters=19740,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 70
F = function() provider.lookup[1] = "?\5?\9?\9?\5?\9?\5?\5?\5?\5?\9?\9?\5?\9?\9?\9?\9?\5?\5?\5?\5;\4?\5?\5?\29?\29?\29?\29?\29?\29?\29?\29?\29?\29;\16;\16" end F()

F = nil
RaiderIO.AddProvider(provider)
