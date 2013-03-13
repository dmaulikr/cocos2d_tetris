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
				sprites[0].color = ccc3(0, 255, 255);
				sprites[1].color = ccc3(0, 255, 255);
				sprites[2].color = ccc3(0, 255, 255);
				sprites[3].color = ccc3(0, 255, 255);
				break;
			case P_O:
				// --
				// --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[0].color = ccc3(255, 255, 0);
				sprites[1].color = ccc3(255, 255, 0);
				sprites[2].color = ccc3(255, 255, 0);
				sprites[3].color = ccc3(255, 255, 0);
				break;
			case P_T:
				//  -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[0].color = ccc3(255, 0, 255);
				sprites[1].color = ccc3(255, 0, 255);
				sprites[2].color = ccc3(255, 0, 255);
				sprites[3].color = ccc3(255, 0, 255);
				break;
			case P_S:
				//  --
				// --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / 2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / -2 , BLOCK_SIZE / -2);
				sprites[0].color = ccc3(0, 255, 0);
				sprites[1].color = ccc3(0, 255, 0);
				sprites[2].color = ccc3(0, 255, 0);
				sprites[3].color = ccc3(0, 255, 0);
				break;
			case P_Z:
				// --
				//  --
				sprites[0].position = CGPointMake( BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[1].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / -2 , BLOCK_SIZE / 2);
				sprites[0].color = ccc3(255, 0, 0);
				sprites[1].color = ccc3(255, 0, 0);
				sprites[2].color = ccc3(255, 0, 0);
				sprites[3].color = ccc3(255, 0, 0);
				break;
			case P_J:
				// -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE / -2	, BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2, BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2 , BLOCK_SIZE / -2);
				sprites[0].color = ccc3(0, 0, 255);
				sprites[1].color = ccc3(0, 0, 255);
				sprites[2].color = ccc3(0, 0, 255);
				sprites[3].color = ccc3(0, 0, 255);
				break;
			case P_L:
				//   -
				// ---
				sprites[0].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2, BLOCK_SIZE / 2);
				sprites[1].position = CGPointMake( BLOCK_SIZE / -2, BLOCK_SIZE / -2);
				sprites[2].position = CGPointMake( BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				sprites[3].position = CGPointMake( BLOCK_SIZE + BLOCK_SIZE / 2, BLOCK_SIZE / -2);
				sprites[0].color = ccc3(255, 127, 0);
				sprites[1].color = ccc3(255, 127, 0);
				sprites[2].color = ccc3(255, 127, 0);
				sprites[3].color = ccc3(255, 127, 0);
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

@end
