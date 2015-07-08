//
//  ViewController.m
//  Threelow
//
//  Created by Jeff Huang on 2015-07-07.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Threelow.h"
#import "Dice.h"

@interface ViewController ()

@property (nonatomic) Threelow* game;
@property (nonatomic) NSArray* diceUIHolder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.game = [[Threelow alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonRollPressed:(UIButton *)sender {
    [self.game rollDice];
    [self.dice_1 setTitle:[Dice valueInUnicode:[[self.game dice1] value]] forState:normal];
    [self.dice_2 setTitle:[Dice valueInUnicode:[[self.game dice2] value]] forState:normal];
    [self.dice_3 setTitle:[Dice valueInUnicode:[[self.game dice3] value]] forState:normal];
    [self.dice_4 setTitle:[Dice valueInUnicode:[[self.game dice4] value]] forState:normal];
    [self.dice_5 setTitle:[Dice valueInUnicode:[[self.game dice5] value]] forState:normal];
    [self.numRolled setText:[NSString stringWithFormat:@"%d", self.game.numRolled]];
    
    [UIView transitionWithView:self.dice_1 duration:0.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
    } completion:^(BOOL finished) {
        //
    }];
    [UIView transitionWithView:self.dice_2 duration:0.5 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
    } completion:^(BOOL finished) {
        //
    }];
    [UIView transitionWithView:self.dice_3 duration:0.5 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
    } completion:^(BOOL finished) {
        //
    }];
    [UIView transitionWithView:self.dice_4 duration:0.5 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
    } completion:^(BOOL finished) {
        //
    }];
    [UIView transitionWithView:self.dice_5 duration:0.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
    } completion:^(BOOL finished) {
        //
    }];
    
}

- (IBAction)buttonResetPressed:(UIButton *)sender {
    [self.game resetDice];
    [self.dice_1 setTitleColor:self.view.tintColor forState:normal];
    [self.dice_2 setTitleColor:self.view.tintColor forState:normal];
    [self.dice_3 setTitleColor:self.view.tintColor forState:normal];
    [self.dice_4 setTitleColor:self.view.tintColor forState:normal];
    [self.dice_5 setTitleColor:self.view.tintColor forState:normal];
    [self updateScore];
}

- (IBAction)buttonHoldDice1Pressed:(UIButton *)sender{
    if(![[self.game dice1] heldState]){
        [self.dice_1 setTitleColor:[UIColor grayColor] forState:normal];
        [self.game holdDice:self.game.dice1];
    }
    else{
        [self.dice_1 setTitleColor:self.view.tintColor forState:normal];
        [self.game holdDice:self.game.dice1];
    }
    [self updateScore];
}

- (IBAction)buttonHoldDice2Pressed:(UIButton *)sender{
    if(![[self.game dice2] heldState]){
        [self.dice_2 setTitleColor:[UIColor grayColor] forState:normal];
        [self.game holdDice:self.game. dice2];
        
    }
    else{
        [self.dice_2 setTitleColor:self.view.tintColor forState:normal];
        [self.game holdDice:self.game. dice2];
    }
    [self updateScore];
}

- (IBAction)buttonHoldDice3Pressed:(UIButton *)sender{
    if(![[self.game dice3] heldState]){
        [self.dice_3 setTitleColor:[UIColor grayColor] forState:normal];
        [self.game holdDice:self.game. dice3];
    }
    else{
        [self.dice_3 setTitleColor:self.view.tintColor forState:normal];
        [self.game holdDice:self.game. dice3];
    }
    [self updateScore];
}

- (IBAction)buttonHoldDice4Pressed:(UIButton *)sender{
    if(![[self.game dice4] heldState]){
        [self.dice_4 setTitleColor:[UIColor grayColor] forState:normal];
        [self.game holdDice:self.game. dice4];
    }
    else{
        [self.dice_4 setTitleColor:self.view.tintColor forState:normal];
        [self.game holdDice:self.game. dice4];
    }
    [self updateScore];
}

- (IBAction)buttonHoldDice5Pressed:(UIButton *)sender{
    if(![[self.game dice5] heldState]){
        [self.dice_5 setTitleColor:[UIColor grayColor] forState:normal];
        [self.game holdDice:self.game. dice5];
    }
    else{
        [self.dice_5 setTitleColor:self.view.tintColor forState:normal];
        [self.game holdDice:self.game. dice5];
    }
    [self updateScore];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if(event.type == UIEventSubtypeMotionShake){
        [self buttonRollPressed:nil];
    }
}

- (void)updateScore{
    [self.game updateScore];
    [self.score setText:[NSString stringWithFormat:@"%d", self.game.score]];
}

@end
