//
//  Dice.m
//  Threelow
//
//  Created by Jeff Huang on 2015-07-07.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heldState = Unheld;
        self.value = 3;
    }
    return self;
}

-(void) generateDiceValue{
    self.value = (arc4random() % 6) + 1;
}

+(NSString*) valueInUnicode:(int)i{
    switch (i) {
        case 1:
            return @"⚀";
            break;
        case 2:
            return @"⚁";
            break;
        case 3:
            return @"⚂";
            break;
        case 4:
            return @"⚃";
            break;
        case 5:
            return @"⚄";
            break;
        case 6:
            return @"⚅";
            break;
        default:
            break;
    }
    return nil;
}

@end
