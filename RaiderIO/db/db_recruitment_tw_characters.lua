--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-12-22T06:56:28Z",numCharacters=21475,db={}}
local F

F = function() provider.db["日落沼澤"]={0,"一條龍服務","冰火雙重天","我爱看烟花","灵犀","無尾熊之星","練個喚能師","肉嘟嘟胖呼呼","阿戦","阿莱克斯莉萨","非正义的圣光"} end F()
F = function() provider.db["暗影之月"]={20,"Arddream","Killua","一颗豆芽呀","水月龙芯","滿玥丶","牛爱草","諾米化身為龍","賓尼兎","赫爾墨斯丶墮","邪刃肥貓","野馬丶"} end F()
F = function() provider.db["憤怒使者"]={42,"扛麥郎習近平","鹹魚餅"} end F()
F = function() provider.db["語風"]={46,"Solozwarlock"} end F()

F = nil
RaiderIO.AddProvider(provider)
