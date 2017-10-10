//
//  GameModel.h
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Player.h"

@interface GameModel : NSObject
@property Question *currentQ;
@property QuestionManager *qManager;
@property QuestionFactory *qFactory;

@property (nonatomic, strong)Player *player1;
@property (nonatomic, strong)Player *player2;
@property (nonatomic, strong)Player *currentPlayer;

-(NSString *)newQuestion;
-(bool)checkAnaswer:(int)answer;
- (void)switchPlayer;

@end
