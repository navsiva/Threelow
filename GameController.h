//
//  GameController.h
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "InputManager.h"

@interface GameController : InputManager

+(instancetype)gameControllerForHoldingDice;



@property (nonatomic, strong) NSMutableArray *diceArray;

@property (nonatomic, strong) NSMutableArray *diceHeldArray;

//-(instancetype)initWithDiceHeldArray:(NSMutableArray *)diceHeldArray;


-(void)randomizeAll;

-(void)printAll;

@end
