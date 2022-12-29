--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-12-29T07:14:44Z",numCharacters=23021,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 54
F = function() provider.lookup[1] = "?\29?\29?\29?\29?\29?\29\4\4?\29?\29?\29?\29?\9?\9?\9?\9\169\6?\9?\9?\9?\9?\9\169\6\5\16\5\4;\4\4\4\4\4" end F()

F = nil
RaiderIO.AddProvider(provider)
