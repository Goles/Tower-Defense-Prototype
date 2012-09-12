//
//  GameScene.h
//  Prototype
//
//  Created by Nicolas Goles on 9/12/12.
//
//

#import "cocos2d.h"

@class Creep;
@class Waypoint;
@class Wave;

@interface GameScene : CCLayer

@property (strong) CCTMXTiledMap *tileMap;
@property (strong) CCTMXLayer *background;
@property (assign) int currentLevel;

+ (id) scene;
- (void) addWaypoints;
- (void) addWaves;

@end
