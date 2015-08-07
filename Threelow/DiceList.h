//
//  DiceList.h
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@class DiceList;

@interface DiceList : NSObject

@property (nonatomic, strong) NSMutableArray *dices;

@property (nonatomic, strong) NSString *userInput;

@property (nonatomic, strong) DiceList *diceList;

-(id)addNewDiceGameWithDictionary:(NSDictionary *)diceDict;


@end
