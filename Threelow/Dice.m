//
//  Dice.m
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "Dice.h"
#import "GameController.h"

@implementation Dice

-(instancetype)initWithValue:(NSString *)value {
    
    self = [super init];
    if (self) {
        _value = value;

    }
    return self;

}

-(id)getRandomNumberBetween:(int)from to:(int)to {
    
    float value = (int)from + arc4random() % (to-from+1);
    
    return [NSString stringWithFormat:@"%0.1f", value];
}

-(NSString *)description
{
    return self.value;
}

@end
