//
//  main.m
//  Threelow
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-06.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputManager *menuInputManager = [[InputManager alloc] init];
        
        BOOL running = YES;
        
        GameController *gameController = [GameController gameControllerForHoldingDice];
        

        while(running) {
            
            
            menuInputManager.inputDictionary = @{@"welcomeMenu" : @"Welcome to Threelow. Enter roll to roll the dice."};

            NSDictionary *dict = [menuInputManager takeInput];

            NSString *menuChoice = [dict[@"welcomeMenu"] lowercaseString];
            
            if ([menuChoice isEqual: @"roll"]){
                
                [gameController randomizeAll];
                [gameController printAll];
                
                
            menuInputManager.inputDictionary = @{@"holdMenu" : @"\nTo hold, enter hold and dice number ex. hold 3 or hold 3,4,5 \nTo unhold, enter unhold and dice number ex. unhold 3 or unhold 3,4,5 "};
                
                NSDictionary *dict = [menuInputManager takeInput];
                
                NSString *holdRequest = [dict[@"holdMenu"] substringFromIndex:5];
                
                
                
                NSArray *holdArray = [holdRequest componentsSeparatedByString:@","];
                
                
                for (int i = 0; i < (holdArray.count); i++) {
                    
                    
                    NSNumber *diceIndex = [holdArray objectAtIndex:i];
                    
                    int x = diceIndex.intValue - 1;

                    
                    NSLog(@"%@", diceIndex);
                                        
                    [gameController.diceHeldArray addObject:(gameController.diceArray[x])];
                    
                }

                [gameController printAll];
                
                

            }

            
        }
        
    }
    return 0;
}
