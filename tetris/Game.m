//
//  Game.m
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Game.h"
#import "Piece.h"
#import "Board.h"
#import "CCLayer.h"


@implementation Game
// Helper class method that creates a Scene.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Game *layer = [Game node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(void) spawnPiece{
	 
}

#pragma mark - Layer Init
-(void) initScoreLayer {
	[self setScoreLayer:[[CCLayerColor alloc] initWithColor:ccc4(0,255,0,255) width:120 height:240]];
	[self.scoreLayer setPosition:CGPointMake(200, 240)];
	[self addChild:self.scoreLayer];
}
- (void) initNextLayer {
	[self setNextLayer:[[CCLayerColor alloc] initWithColor:ccc4(255, 0, 0, 255) width:120 height:240]];
	[self.nextLayer setPosition:CGPointMake(200, 0)];
	[self addChild:self.nextLayer];
}
- (void)initBoardLayer {
	[self setBoardLayer:[[CCLayerColor alloc] initWithColor:ccc4(0, 0, 0, 255) width:200 height:400]];
	[self.boardLayer setPosition:CGPointMake(0, 0)];
	[self addChild:self.boardLayer];
	
	[self setGameBoard:[[Board alloc] initWithNode:self.boardLayer]];
}

-(id) init {
	if ((self=[super init])) {
		// init each layer
		[self initBoardLayer];
		[self initScoreLayer];
		[self initNextLayer];
		
	}
	return self;
}

@end
