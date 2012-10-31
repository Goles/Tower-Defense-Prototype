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
@class Hud;

@interface GameScene : CCLayer

@property (strong) CCTMXTiledMap *tileMap;
@property (strong) CCTMXLayer *background;
@property (assign) int currentLevel;
@property (assign) int totalMoney;

+ (id) scene;
- (void) addWaypoints;
- (void) addWaves;
- (void) addTowerAtPoint:(CGPoint) point;
- (BOOL) canBuildAtPosition:(CGPoint) point;

@end
