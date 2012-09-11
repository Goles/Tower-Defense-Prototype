//
//  SpaceManager.h
//  Prototype
//
//  Created by Nicolas Goles on 9/11/12.
//
//

#import <Foundation/Foundation.h>
#import "GameConstants.h"

@class Cell;

@interface  CellManager : NSObject {
    Cell *board[CELL_HORIZONTAL_NUM][CELL_VERTICAL_NUM];
}

+ (CellManager *) sharedManager;


@end
