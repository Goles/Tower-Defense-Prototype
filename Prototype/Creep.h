//
//  Creep.h
//  Prototype
//
//  Created by Nicolas Goles on 9/12/12.
//
//

#import "cocos2d.h"

@class Waypoint;

@interface Creep : CCSprite

@property (assign) int currentHitPoints;
@property (assign) int moveDuration;
@property (assign) int currentWaypointIndex;

- (Waypoint *) currentWaypoint;
- (Waypoint *) nextWaypoint;
- (Creep *) initWithCreep:(Creep *) aCreep;

@end

#pragma mark -
#pragma mark Fast Red
@interface FastRed : Creep
+ (id) creep;
@end

#pragma mark -
#pragma mark Strong Green
@interface StrongGreen: Creep
+ (id) creep;
@end
