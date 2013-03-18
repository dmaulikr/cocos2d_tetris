//
//  Game.h
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class Piece;
@class Board;

@interface Game : CCLayer {
}
@property (nonatomic, strong) CCLayerColor *scoreLayer;
@property (nonatomic, strong) CCLayerColor *nextLayer;
@property (nonatomic, strong) CCLayerColor *boardLayer;
@property (nonatomic, strong) Piece *currPiece;
@property (nonatomic, strong) Board *gameBoard;
@property (nonatomic, strong) NSArray *pieveQueue;


+(CCScene *) scene;
@end
