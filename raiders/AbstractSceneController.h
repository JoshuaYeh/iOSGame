//
//  AbstractSceneController.h
//  raiders
//
//  Created by Janimatti Ellonen on 7.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
@class Sprite;

#import <Foundation/Foundation.h>

@interface AbstractSceneController : NSObject {
    NSMutableArray *spriteList;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event view:(UIView *)aView;

- (void)playScene;
- (void)addSprite:(Sprite*)sprite;
- (void)updateScene;

@end
