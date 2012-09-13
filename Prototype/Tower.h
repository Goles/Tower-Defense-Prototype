//
//  Tower.h
//  Prototype
//
//  Created by Nicolas Goles on 9/13/12.
//
//

#import "cocos2d.h"

@interface Tower : CCSprite

@property (assign) int range;
@property (strong) CCSprite *rangeSprite;

@end


@interface BasicTower : Tower
+ (id) tower;
- (void) logic:(ccTime) dt;
@end