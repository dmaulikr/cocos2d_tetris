//
//  Game.m
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Game.h"
#import "Piece.h"

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

-(id) init {
	if ((self=[super init])) {
		CGSize winSize = [[CCDirector sharedDirector] winSize];
		for (int i = 0; i < PIECE_MAX; i++) {
			Piece *p = [[Piece alloc] initPieceOfType:i];
			[p setPosition:CGPointMake(winSize.width / 2, 40 * i + 40)];
			[self addChild:p];
		}
	}
	return self;
}

@end
