//
//  MainScene.h
//  MGWU
//
//  Created by Benjamin Encz on 11/12/13.
//  Copyright MakeGamesWithUs 2013. Free to use for all purposes.
//
// -----------------------------------------------------------------------

#import "MainScene.h"

@implementation MainScene


+ (MainScene *)scene
{
    return [[self alloc] init];
}

- (id)init
{
    if (self = [super init])
    {
        // activate touches on this scene
        self.userInteractionEnabled = TRUE;
    }
	return self;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    // we want to know the location of our touch in this scene
    CGPoint touchLocation = [touch locationInNode:self];
    
    // create a 'hero' sprite
    CCSprite *hero = [CCSprite spriteWithImageNamed:@"hero.png"];
    [self addChild:hero];
    
    // place the sprite at the touch location
    hero.position = touchLocation;
}


@end