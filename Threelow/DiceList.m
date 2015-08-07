//
//  DiceList.m
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "DiceList.h"

@implementation DiceList

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.dices = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(id)addNewDiceGameWithDictionary:(NSDictionary *)diceDict {
    
    Dice *newDice = [[Dice alloc] init];
    
    newDice.value1 = diceDict[@"value1"];
    newDice.value2 = diceDict[@"value2"];
    newDice.value3 = diceDict[@"value3"];
    newDice.value4 = diceDict[@"value4"];
    newDice.value5 = diceDict[@"value5"];
    
    [self.dices addObject:newDice];
    
    for (Dice *dice in self.dices) {
        
        NSLog(@"%@", dice);
    }
        
    
}

@end
