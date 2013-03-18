//
//  Board.h
//  tetris
//
//  Created by Ryan Schumacher on 3/12/13.
//
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

// This class is intended to hold an maintain an instance of the game board
extern const int BOARD_WIDTH; // 10
extern const int BOARD_HEIGHT; // 22

@interface Board : NSObject {
	CCNode* table[10][22];
}
@property (nonatomic, strong) CCNode* boardNode;
-(id)initWithNode:(CCNode*) node;
@end
