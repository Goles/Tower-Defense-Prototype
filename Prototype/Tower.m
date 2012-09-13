//
//  Tower.m
//  Prototype
//
//  Created by Nicolas Goles on 9/13/12.
//
//

#import "Tower.h"

#pragma mark -
#pragma mark Tower
@implementation Tower
@end

#pragma mark -
#pragma mark Basic Tower
@implementation BasicTower

- (id) init
{
    if (self = [super init]) {
        // init
    }
    
    return self;
}

+ (id) tower
{
    Tower *tower = [[[super alloc] initWithFile:@"tower1.png"] autorelease];
    if (tower) {
        tower.range = 200; // Range in Pixels
        [tower schedule:@selector(logic:) interval:0.2f];
    }

    return tower;
}

- (void) logic:(ccTime)dt
{
    // Should update logic here
}

@end