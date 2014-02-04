//
//  CCDragSprite.m
//  TouchHandling
//
//  Created by Benjamin Encz on 04/02/14.
//  Copyright (c) 2014 MakeGamesWithUs. All rights reserved.
//

#import "CCDragSprite.h"

@implementation CCDragSprite

- (void)onEnter {
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
}

- (void)touchMoved:(UITouch *)touch withEvent:(UIEvent *)event
{
    // we want to know the location of our touch in this scene
    CGPoint touchLocation = [touch locationInNode:self.parent];
    self.position = touchLocation;
}

@end
