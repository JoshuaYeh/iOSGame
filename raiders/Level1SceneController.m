//
//  Level1SceneController.m
//  raiders
//
//  Created by Janimatti Ellonen on 8.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Level1SceneController.h"

@implementation Level1SceneController

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event view:(UIView*)aView { }
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView { }
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView { }

- (id)init {
    self = [super init];
    
    if(self != nil) {
        sprite = [[Sprite alloc] initWithImageNamed:@"play"];
        [self addSprite:sprite];
    }
    
    
    
    return self;
}

- (void)playScene {
    [super playScene];
    
    [sprite drawAtPosition:CGPointMake(100, 200)];
}

@end
