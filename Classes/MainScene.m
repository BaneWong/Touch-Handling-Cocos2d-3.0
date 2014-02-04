//
//  MainScene.h
//  MGWU
//
//  Created by Benjamin Encz on 11/12/13.
//  Copyright MakeGamesWithUs 2013. Free to use for all purposes.
//
// -----------------------------------------------------------------------

#import "MainScene.h"
#import "CCDragSprite.h"

@implementation MainScene {
    // this is the section to place private instance variables!
    CCSprite *currentHero;
}

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
    currentHero = [CCDragSprite spriteWithImageNamed:@"hero.png"];
    [self addChild:currentHero];
    
    // place the sprite at the touch location
    currentHero.position = touchLocation;
}

- (void)touchMoved:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint touchLocation = [touch locationInNode:self];
    currentHero.position = touchLocation;
}

- (void)touchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    currentHero = nil;
}

- (void)touchCancelled:(UITouch *)touch withEvent:(UIEvent *)event
{
    currentHero = nil;
}

@end