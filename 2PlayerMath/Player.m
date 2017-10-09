//
//  Player.m
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives = 3;
    }
    return self;
}
@end
