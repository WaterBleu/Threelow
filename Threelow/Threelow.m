//
//  Threelow.m
//  Threelow
//
//  Created by Jeff Huang on 2015-07-07.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "Threelow.h"
#import "Dice.h"

@implementation Threelow

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dice1 = [[Dice alloc] init];
        self.dice2 = [[Dice alloc] init];
        self.dice3 = [[Dice alloc] init];
        self.dice4 = [[Dice alloc] init];
        self.dice5 = [[Dice alloc] init];
        self.diceHolder = [[NSArray alloc] initWithObjects:self.dice1, self.dice2, self.dice3, self.dice4, self.dice5, nil];
    }
    return self;
}

-(void) rollDice{
    for(Dice *d in self.diceHolder){
        if(![d heldState])
            [d generateDiceValue];
    }
    self.numRolled += 1;
}

-(void) resetDice{
    for(Dice *d in self.diceHolder){
        if([d heldState])
            d.heldState = Unheld;
    }
    [self updateScore];
}

-(void) holdDice: (Dice*) d{
    d.heldState = !d.heldState;
    [self updateScore];
}

-(void) updateScore{
    int score = 0;
    for(Dice *d in self.diceHolder){
        if([d heldState]){
            if(d.value != 3)
                score+=d.value;
        }
    }
    self.score = score;
}

@end
