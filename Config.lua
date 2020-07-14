Risky ={}
--Police Shit, some shit don't work yet...
Risky.CallCops = true
--Risky.CopsNeed = 2                                --Number of cops neded to be online in order to be able to sell drugs
--Risky.CopsMore = true                             --If true then you will be able to sell drugs for more when there are on duty
--Risky.CopsCount = 0                               --Required amount of cops to be online for drugs to be able to sell for more
--Risky.CopsNet = 150                               --How much more drugs will sell for when cops are on(per individual drug)

--Risky.CopsWarn = 30                               --Percent chance cops will be called
--Risky.PedsDec = 25                                --Percent chance a ped will decline you offering drugs
--Risky.GcPhone = true                              --true if using GC phone, false if using esx... Maybe... Not sure how I want to incoorporate this yet.

Risky.WeedCount = math.random(1, 3)                 --Number of Drugs sold when successful (min, max)
Risky.CokeCount = math.random(1, 3)                 --If you want players to only sell 1 drug at a time, replace math.random(1, 3) with "1" Ex. Risky.WeedCount = 1
Risky.HeroCount = math.random(1, 3)
Risky.MethCount = math.random(1, 3)

Risky.WeedPrice = math.random(420, 420)             --Price drugs will sell for each drug (min, max)
Risky.CokePrice = math.random(650, 900)
Risky.HeroPrice = math.random(700, 950)
Risky.MethPrice = math.random(650, 925)