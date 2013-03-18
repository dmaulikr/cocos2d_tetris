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

#define P_I_COLOR (ccc3(0, 255, 255))
#define P_O_COLOR (ccc3(255, 255, 0))
#define P_T_COLOR (ccc3(255, 0, 255))
#define P_S_COLOR (ccc3(0, 255, 0))
#define P_Z_COLOR (ccc3(255, 0, 0))
#define P_J_COLOR (ccc3(0, 0, 255))
#define P_L_COLOR (ccc3(255, 127, 0))

extern const int BLOCK_SIZE;

@interface Piece : CCNode {
    CCSprite *sprites[4];
	PIECE_TYPE type;
}
@property (nonatomic, assign) PIECE_TYPE type;

-(id) initPieceOfType:(PIECE_TYPE) type;
-(id) initRandomPiece;
+(ccColor3B) PieceColor:(PIECE_TYPE)pieceType;
@end
