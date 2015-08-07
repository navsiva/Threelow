//
//  InputManager.m
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager

-(NSMutableDictionary *)takeInput{
    
    
    
    NSMutableDictionary *outDICT =  [[NSMutableDictionary alloc] init];
    
    for (NSString *key in self.inputDictionary) {
        NSLog(@"%@", self.inputDictionary[key]);
        
        char cstring[40];
        
        fgets (cstring, 40, stdin);
        
        NSString *userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
        
        userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        [outDICT setObject:userInput forKey:key];
        
    }
    
    return outDICT;
    
}

//-(NSMutableDictionary *)takeDice {
//    
//    
//    NSMutableDictionary *outDICT =  [[NSMutableDictionary alloc] init];
//    for (NSString *key in self.inputDictionary) {
//        NSLog(@"%@ %@", self.inputDictionary, self.inputDictionary[key]);
//        
//        char cstring[40];
//        
//        fgets (cstring, 40, stdin);
//        
//        NSString *userInput = [NSString stringWithCString:cstring encoding:NSASCIIStringEncoding];
//        
//        userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        
//        if ([userInput isEqual:@"yes"]){
//        
//        [outDICT setObject:userInput forKey:key];
//        
//        }
//        
//    }
//    
//    
//    return outDICT;
//
//    
//}





@end
