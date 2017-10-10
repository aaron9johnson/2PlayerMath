//
//  Question.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Question.h"

@implementation Question
-(instancetype)init{
    if(self = [super init]){
        _num1 = arc4random_uniform(20) + 1;
        _num2 = arc4random_uniform(20) + 1;
        _question = [NSString stringWithFormat:@"%d + %d = ",_num1,_num2];
        _answer = _num1 + _num2;
    }
    return self;
}
-(BOOL)checkAnswer:(int)answer {
    if(_answer == answer){
        return true;
    }
    return false;
}

@end
