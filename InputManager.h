//
//  InputManager.h
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputManager : NSObject

@property (nonatomic, strong) NSDictionary *inputDictionary;

-(NSMutableDictionary *)takeInput;




@end
