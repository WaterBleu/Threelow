//
//  Dice.h
//  Threelow
//
//  Created by Jeff Huang on 2015-07-07.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

typedef NS_ENUM(BOOL, HeldState){
    Held = true,
    Unheld = false,
};

@property (nonatomic) int value;
@property (nonatomic) HeldState heldState;

-(void) generateDiceValue;
+(NSString*) valueInUnicode:(int) i;

@end
