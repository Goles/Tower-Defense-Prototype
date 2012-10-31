//
//  GameStateHud.m
//  Prototype
//
//  Created by Nicolas Goles on 10/31/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameStateHud.h"

@implementation GameStateHud

+ (GameStateHud *) sharedManager
{
    static dispatch_once_t once;
    static GameStateHud *sharedInstance = nil;

    dispatch_once(&once, ^{
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
    });

    return sharedInstance;
}

- (id) init
{
    if (self = [super init]) {
        CGSize windowSize = [CCDirector sharedDirector].winSize;
        _moneyAmountLabel = [CCLabelTTF labelWithString:@"This is a test" fontName:@"Courier" fontSize:24];
        _moneyAmountLabel.position = ccp(120, 120);
        [self addChild:_moneyAmountLabel];
    }

    return self;
}


@end
