//
//  Dice.h
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject {}

@property (nonatomic, strong) NSString *value;


-(instancetype)initWithValue:(NSString *)value;

-(id)getRandomNumberBetween:(int)from to:(int)to;





@end
