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
        CCLabelTTF *helloWorld = [CCLabelTTF labelWithString:@"Let's handle touches!" fontName:@"Arial" fontSize:48];
        helloWorld.positionType = CCPositionTypeNormalized;
        helloWorld.position = ccp(0.5f, 0.5f);
        
        [self addChild:helloWorld];
    }
	return self;
}

@end