//
//  QuestionManager.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager
-(instancetype)init{
    if(self = [super init]){
        _questions = [NSMutableArray new];
    }
    return self;
}

@end
