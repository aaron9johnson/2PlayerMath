//
//  GameModel.m
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "GameModel.h"
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

@implementation GameModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _qManager = [QuestionManager new];
        _qFactory = [QuestionFactory new];
        _player1 = [Player new];
        self.player1.name = @"Player 1";
        _player2 = [Player new];
        self.player2.name = @"Player 2";
        _currentPlayer = self.player2;
        
    }
    return self;
}
- (void)switchPlayer
{
    if ([self.currentPlayer isEqual:self.player1]) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player1;
    }
}

-(NSString *)newQuestion{
 
    [self switchPlayer];
    
    self.currentQ = [self.qFactory generateRandomQuestion];
    [self.qManager.questions addObject:self.currentQ];
    return self.currentQ.question;
}
-(bool)checkAnaswer:(int)answer{
    if([self.currentQ checkAnswer:answer]){
        return true;
    } else {
        self.currentPlayer.lives = self.currentPlayer.lives - 1;
        return false;
    }
}

@end
