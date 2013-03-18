//
//  Piece.m
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Piece.h"

const int BLOCK_SIZE = 20;

@implementation Piece
@synthesize type;
-(id) initPieceOfType:(PIECE_TYPE) _type {
	if ((self = [super init])) {
		// set type
		[self setType:_type];
		// init sprites
		for ( int i=0; i<4; i++ ) {
			sprites[i] = [[CCSprite alloc] initWithFile:@"Block.png"];
			[self addChild:sprites[i]];
		}
		ccColor3B col;
		switch ([self type]) {
			case P_I:
				//
				// ----
				sprites[0].position = CGPointMake( -1 * BLOCK_SIZE - BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_I_COLOR;
				break;
			case P_O:
				// --
				// --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_O_COLOR;
				break;
			case P_T:
				//  -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_T_COLOR;
				break;
			case P_S:
				//  --
				// --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_S_COLOR;
				break;
			case P_Z:
				// --
				//  --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[1].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_Z_COLOR;
				break;
			case P_J:
				// -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE / -2	, BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2, BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_J_COLOR;
				break;
			case P_L:
				//   -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2, BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2, BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				for ( int i=0; i<4; i++)
					sprites[i].color = P_L_COLOR;
				break;
			case PIECE_MAX:
				// do nothing
				break;
		}
	}
	return self;
}
-(id) initRandomPiece {
	return [self initPieceOfType:rand()%PIECE_MAX];
}


+(ccColor3B) PieceColor:(PIECE_TYPE)pieceType {
	switch (pieceType) {
		case P_I:
			return P_I_COLOR;
		case P_O:
			return P_O_COLOR;
		case P_T:
			return P_T_COLOR;
		case P_S:
			return P_S_COLOR;
		case P_Z:
			return P_Z_COLOR;
		case P_J:
			return P_J_COLOR;
		case P_L:
			return P_L_COLOR;
		case PIECE_MAX:
			return ccc3(0, 0, 0);
	}
	return ccc3(0, 0, 0);
}
@end
