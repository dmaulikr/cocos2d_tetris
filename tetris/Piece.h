//
//  Piece.h
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
typedef enum _PIECE_TYPE {
	P_I,P_O,P_T,P_S,P_Z,P_J,P_L, PIECE_MAX
} PIECE_TYPE;

extern const int BLOCK_SIZE;

@interface Piece : CCNode {
    CCSprite *sprites[4];
	PIECE_TYPE type;
}
@property (nonatomic, assign) PIECE_TYPE type;

-(id) initPieceOfType:(PIECE_TYPE) type;
-(id) initRandomPiece;
@end
