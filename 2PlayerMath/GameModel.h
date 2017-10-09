//
//  GameModel.h
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

@interface GameModel : NSObject
@property ScoreKeeper* score;
@property Question *currentQ;
@property QuestionManager *qManager;
@property QuestionFactory *qFactory;
-(NSString *)newQuestion;
-(bool)checkAnaswer:(int)answer;

@end
