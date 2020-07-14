Risky ={
    CallCops = true,                        --True if you want cops to be called by % chance
    TTS = 3.5,                              --Time To Sell, How long to negotiate drug deal
    Chance = {                              --Fun math stuff.
        NotI = 30,                          --Percent chance the buyer is not interested
        Sell = 50,                          --Percent chance to sell items
        CalC = 20,                          --Percent chance buyer will call cops.
    },
    I1 = {
        Item = 'weed',                      --Name of Item in your database
        Count = math.random(1, 3),          --Amount of drugs sold at a time (min, max)
        Price = math.random(420, 420),      --Price drugs will sell for (min, max)
        Acc = 'black_money',                --Account to be paid in. (DO NOT CHANGE THIS, IT WILL NOT WORK UNTIL I DECIDE HOW I WANT TO USE IT)
    },
    I2 = {
        Item = 'coke',
        Count = math.random(1, 3),
        Price = math.random(650, 900),
        Acc = 'black_money',
    },
    I3 = {
        Item = 'meth',
        Count = math.random(1, 3),
        Price = math.random(700, 950),
        Acc = 'black_money',
    },
    I4 = {
        Item = 'heroin',
        Count = math.random(1, 3),
        Price = math.random(650, 925),
        Acc = 'black_money',
    },
}
