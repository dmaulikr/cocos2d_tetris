//
//  Board.m
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//
//

#import "Board.h"
#import "Piece.h"
const int BOARD_WIDTH = 10;
const int BOARD_HEIGHT= 22;

@implementation Board
-(id) initWithNode:(CCNode*)node {
	if ((self = [super init])) {
		[self setBoardNode:node];
		// zero out the board
		memset(table, 0, sizeof(table[0][0]) * BOARD_HEIGHT * BOARD_WIDTH);
		[self initRandomBoard];
	}
	return self;
}
- (void) initRandomBoard{
	for ( int x = 0; x < BOARD_WIDTH; x++ )
		for (int y = 0; y<BOARD_HEIGHT; y++) {
			//get random number
			if ( (arc4random() % 4) == 0) {
				[self addSpriteX:x Y:y Type:arc4random()%PIECE_MAX];
			}
		}
}
- (void) addSpriteX:(int)x Y:(int)y Type:(PIECE_TYPE) type{
	CCSprite* sprite = [[CCSprite alloc] initWithFile:@"Block.png"];
	[self setSprite:sprite X:x Y:y];
	[sprite setColor:[Piece PieceColor:type]];
	[self.boardNode addChild:sprite];
}
-(void) setSprite:(CCNode*) sprite X:(int)x Y:(int)y {
	table[x][y] = sprite;
	sprite.position = CGPointMake(BLOCK_SIZE*x + BLOCK_SIZE/2, BLOCK_SIZE*y + BLOCK_SIZE/2);
}
-(void) removeSpriteX:(int)x Y:(int)y {
	[[self boardNode] removeChild:table[x][y] cleanup:TRUE];
	table[x][y] = nil;
}
@end
