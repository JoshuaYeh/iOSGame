//
//  AbstractSceneController.m
//  raiders
//
//  Created by Janimatti Ellonen on 7.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AbstractSceneController.h"
#import "Sprite.h"

@implementation AbstractSceneController

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event view:(UIView*)aView { }
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView { }
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView { }
- (void) playScene {}

#pragma mark Concrete methods

- (void)addSprite:(Sprite *)sprite {
    if(spriteList == nil) {
        spriteList = [NSMutableArray array];
    }
    
    [spriteList addObject:sprite];
}

- (void)updateScene {
    if(spriteList != nil) {
        for(Sprite *sprite in spriteList) {
            [sprite updateTransforms];
        }
    }
}

@end
