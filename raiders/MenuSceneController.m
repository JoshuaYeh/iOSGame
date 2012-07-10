//
//  MenuSceneController.m
//  raiders
//
//  Created by Janimatti Ellonen on 7.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MenuSceneController.h"
#import "Sprite.h"
#import "GameController.h"
#import "ActionItem.h"

@implementation MenuSceneController

@synthesize playButton;
@synthesize background;

- (id) init {
    self = [super init];
    
    if(self != nil) {
        playButton = [[ActionItem alloc] initWithImageNamed:@"play"];
        background = [[Sprite alloc] initWithImageNamed:@"background2"];
        
        [self addSprite:playButton];
        [self addSprite:background];
    }
    return self;
}

- (void)playScene {
    [super playScene];
    [background drawAtPosition:CGPointMake(0.0f, 0.0f)];
    [playButton drawAtPosition:CGPointMake(10.0f, 410.0f)];
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event view:(UIView*)aView {
    UITouch *touch = [[event touchesForView:aView] anyObject];
	CGPoint touchPoint = [touch locationInView:aView];    
    
    for(ActionItem *item in spriteList) {
        if([item isKindOfClass:[ActionItem class]] && [item hasBeenTapped:(touchPoint)]) {
            [item tapAction:@selector(gotoLevel1Scene) target:self];
        }
    }
}


- (void)gotoLevel1Scene {
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"O rlly?" message:nil delegate:nil
                          cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
    
    
    [[GameController sharedGameController] changeScene:LEVEL1_SCENE];
}
@end
