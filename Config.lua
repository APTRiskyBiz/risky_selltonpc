--Police Shit, some shit don't work yet...
Risky.CallCops = true
--Risky.CopsMore = true                             --If true then you will be able to sell drugs for more when there are on duty
--Risky.CopsCount = 0                               --Required amount of cops to be online for drugs to be able to sell for more
--Risky.CopsNet = 300                               --How much more drugs will sell for when cops are on(per individual drug)

--Risky.CopsWarn = 30                               --Percent chance cops will be called
--Risky.PedsDec = 25                                --Percent chance a ped will decline you offering drugs
Risky.Account = 'black_money'                       --Don't Change this... yet.  I will add functionality for this later. Has to stay black money for now.
Risky.Item1 = 'weed'                                --Names of the items use per your database(will add more later.)
Risky.Item2 = 'coke'
Risky.Item3 = 'meth'
Risky.Item4 = 'heroin'

Risky.Item1Count = math.random(1, 3)                 --Number of Drugs sold when successful (min, max)
Risky.Item2Count = math.random(1, 3)                 --If you want players to only sell 1 drug at a time, replace math.random(1, 3) with "1" Ex. Risky.WeedCount = 1
Risky.Item3Count = math.random(1, 3)
Risky.Item4Count = math.random(1, 3)

Risky.Item1Price = math.random(420, 420)             --Price drugs will sell for each drug (min, max)
Risky.Item2Price = math.random(650, 900)
Risky.Item3Price = math.random(700, 950)
Risky.Item4Price = math.random(650, 925)
