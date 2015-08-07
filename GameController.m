//
//  GameController.m
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController



+(instancetype)gameControllerForHoldingDice{
    
    NSMutableArray *diceValues = [[NSMutableArray alloc] init];
    
    NSMutableArray *diceHeldArray = [[NSMutableArray alloc] init];

    
    Dice *dice1 = [[Dice alloc] init];
    dice1.value = [dice1 getRandomNumberBetween:1 to:6];
    [diceValues addObject:dice1];
    
    Dice *dice2 = [[Dice alloc] init];
    dice2.value = [dice2 getRandomNumberBetween:1 to:6];
    [diceValues addObject:dice2];
    
    Dice *dice3 = [[Dice alloc] init];
    dice3.value = [dice3 getRandomNumberBetween:1 to:6];
    [diceValues addObject:dice3];
    
    Dice *dice4 = [[Dice alloc] init];
    dice4.value = [dice4 getRandomNumberBetween:1 to:6];
    [diceValues addObject:dice4];
    
    Dice *dice5 = [[Dice alloc] init];
    dice5.value = [dice5 getRandomNumberBetween:1 to:6];
    [diceValues addObject:dice5];
    

    
    GameController *gc = [[GameController alloc] init];
    
    gc.diceArray = diceValues;
    
    gc.diceHeldArray = diceHeldArray;
    
    
    return gc;
    
}

//+(instancetype)initializeHeldArray{
//    
////    NSMutableArray *diceHeldArray = [[NSMutableArray alloc] initWithCapacity:5];
//    
////    GameController *hc = [[GameController alloc] init];
//    
//    
//    
//    return hc;
//
//}


-(void)randomizeAll{

    NSLog(@"111%@", self.diceArray);
        NSLog(@"111%@", self.diceHeldArray);
    for (Dice *dice in self.diceArray) {
        
        if (![self.diceHeldArray containsObject:dice]) {
        
        dice.value = [dice getRandomNumberBetween:1 to:6];
            
        }
        
//        else {
        
//            for (int i = 0; i < self.diceArray.count; i++) {
            
//                dice.value = [(Dice *)[self.diceArray objectAtIndex:i] value];

//            }
//
//        }
    }
    NSLog(@"222%@", self.diceArray);
    NSLog(@"222%@", self.diceHeldArray);
    
}

-(void)printAll{
    

    for (Dice *dice in self.diceArray){
        
        if ([self.diceHeldArray containsObject:dice]){
            
            NSLog(@"[ %@ ]", dice.value);
        }
        
        else {
            
            
            NSLog(@"  %@  ", dice.value);

            
        }
        
//    }
    }
    
    
}


@end
