//
//  GameModel.m
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "GameModel.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

@implementation GameModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _score = [ScoreKeeper new];
        _qManager = [QuestionManager new];
        _qFactory = [QuestionFactory new];
        //[self newMain];
    }
    return self;
}
-(NSString *)newQuestion{
    self.currentQ = [self.qFactory generateRandomQuestion];
    [self.qManager.questions addObject:self.currentQ];
    return self.currentQ.question;
}
-(bool)checkAnaswer:(int)answer{
    if([self.currentQ checkAnswer:answer score:self.score]){
        return true;
    } else {
        return false;
    }
}

@end
