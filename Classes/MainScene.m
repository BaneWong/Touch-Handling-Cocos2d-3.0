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
    CCLOG(@"Received a touch");
}


@end