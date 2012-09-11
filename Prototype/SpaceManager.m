//
//  SpaceManager.m
//  Prototype
//
//  Created by Nicolas Goles on 9/11/12.
//
//

#import "SpaceManager.h"


static SpaceManager* _instance = nil;

@implementation SpaceManager

+ (SpaceManager *) sharedManager
{
    if (!_instance) {
        _instance = [[SpaceManager alloc] init];
    }
    
    return _instance;
}


+ (id) alloc
{
	NSAssert(_instance == nil, @"Attempted to allocate a second instance of a singleton.");
	return [super alloc];
}


- (id) init
{
	if ((self = [super init])) {
        // Perform Some initializing operations
	}

	return self;
}

@end
