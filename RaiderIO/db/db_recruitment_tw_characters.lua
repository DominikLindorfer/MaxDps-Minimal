--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-12-29T07:14:44Z",numCharacters=23021,db={}}
local F

F = function() provider.db["日落沼澤"]={0,"一條龍服務","冰火雙重天","心有靈犀","我爱看烟花","灵犀","無尾熊之星","練個喚能師","肉嘟嘟胖呼呼","阿戦","阿莱克斯莉萨","非正义的圣光"} end F()
F = function() provider.db["暗影之月"]={22,"Arddream","Killua","一颗豆芽呀","水月龙芯","滿玥丶","牛爱草","諾米化身為龍","賓尼兎","赫爾墨斯丶墮","邪刃肥貓","野馬丶"} end F()
F = function() provider.db["阿薩斯"]={44,"Acsc","Zetaker"} end F()
F = function() provider.db["語風"]={48,"Solozwarlock"} end F()
F = function() provider.db["水晶之刺"]={50,"Mikha","第三任期"} end F()

F = nil
RaiderIO.AddProvider(provider)
