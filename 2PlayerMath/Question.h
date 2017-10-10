//
//  Question.h
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property int num1;
@property int num2;
@property int answer;
@property NSString *question;


-(BOOL)checkAnswer:(int)answer;
-(instancetype)init;
@end
