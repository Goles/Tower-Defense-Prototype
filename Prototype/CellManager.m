//
//  CellManager.m
//  Prototype
//
//  Created by Nicolas Goles on 9/11/12.
//
//

#import "CellManager.h"
#import "CCDirector.h"
#import "GameConstants.h"
#import "Cell.h"

static CellManager* _instance = nil;

@implementation CellManager

+ (CellManager *) sharedManager
{
    if (!_instance) {
        _instance = [[CellManager alloc] init];
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
        // Initialize the Game Board
        for (int i = 0; i < CELL_HORIZONTAL_NUM; ++i) {
            for (int j = 0; j < CELL_VERTICAL_NUM; ++j) {
                board[i][j] = [[Cell alloc] init];
            }
        }
    }

	return self;
}

@end
