//
//  GameManager.m
//  Prototype
//
//  Created by Nicolas Goles on 9/12/12.
//
//

#import "GameManager.h"

static GameManager *_sharedInstance = nil;

@implementation GameManager

// Singleton Access
+ (GameManager *) sharedManager
{
    if (!_sharedInstance) {
        _sharedInstance = [[self alloc] init];
    }
    
    return _sharedInstance;
}

#pragma mark -
#pragma mark NSCoder
- (void) encodeWithCoder:(NSCoder *)aCoder
{
    
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    return self;
}

#pragma mark -
#pragma mark Base Methods
- (id) init
{
    if (self = [super init]) {
        _targets = [[NSMutableArray alloc] init];
        _waypoints = [[NSMutableArray alloc] init];
        _waves = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) dealloc
{
    _gameLayer = nil;
    _gestureRecognizer = nil;
    _targets = nil;
    _waypoints = nil;
    _waves = nil;
    
    [super dealloc];
}


@end
