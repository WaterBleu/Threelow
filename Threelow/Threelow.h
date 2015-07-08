//
//  Threelow.h
//  Threelow
//
//  Created by Jeff Huang on 2015-07-07.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dice;
@interface Threelow : NSObject

@property (nonatomic) Dice* dice1;
@property (nonatomic) Dice* dice2;
@property (nonatomic) Dice* dice3;
@property (nonatomic) Dice* dice4;
@property (nonatomic) Dice* dice5;

@property (nonatomic) NSArray* diceHolder;

@property (nonatomic) int score;
@property (nonatomic) int numRolled;

-(void) rollDice;
-(void) resetDice;
-(void) holdDice: (Dice*) d;
-(void) updateScore;

@end
