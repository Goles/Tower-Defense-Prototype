//
//  Creep.m
//  Prototype
//
//  Created by Nicolas Goles on 9/12/12.
//
//

#import "Creep.h"
#import "GameManager.h"

#pragma mark -
#pragma mark Creep
@implementation Creep

- (id) copyWithZone:(NSZone *) zone
{
    Creep *copy = [[[[self class] allocWithZone:zone] initWithCreep:self] autorelease];
    return copy;
}

- (Creep *) initWithCreep:(Creep *)aCreep
{
    if (self = [super initWithFile:@"Enemy1.png"]) {
        self.currentHitPoints = aCreep.currentHitPoints;
        self.moveDuration = aCreep.moveDuration;
        self.currentWaypointIndex = aCreep.currentWaypointIndex;
    }
    
    return self;
}

- (Waypoint *) currentWaypoint
{
    GameManager *manager = [GameManager sharedManager];
    NSLog(@"WP INDEX %d", self.currentWaypointIndex);
    Waypoint *waypoint = [manager.waypoints objectAtIndex:self.currentWaypointIndex];
    return waypoint;
}

- (Waypoint *) nextWaypoint
{
    GameManager *manager = [GameManager sharedManager];
    int lastWaypointIndex = manager.waypoints.count;
    
    self.currentWaypointIndex++;
    
    if (self.currentWaypointIndex >= lastWaypointIndex) {
        self.currentWaypointIndex = lastWaypointIndex - 1;
    }
    
    NSLog(@"--> %d",self.currentWaypointIndex);
    NSLog(@"*** %d", lastWaypointIndex);
    
    Waypoint *waypoint = [manager.waypoints objectAtIndex:self.currentWaypointIndex];
    return waypoint;
}


@end

#pragma mark -
#pragma mark Fast Red
@implementation FastRed

+ (id) creep
{
    FastRed *creep = nil;
    if ((creep = [[[self alloc] initWithFile:@"Enemy1.png"] autorelease])) {
        creep.currentHitPoints = 40;
        creep.moveDuration = 9;
        creep.currentWaypointIndex = 0;
    }
    
    return creep;
}

@end

#pragma mark -
#pragma mark Strong Green
@implementation StrongGreen

+ (id) creep
{
    StrongGreen *creep = nil;
    return creep;
}

@end
