//
//  ActionItem.m
//  raiders
//
//  Created by Janimatti Ellonen on 8.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ActionItem.h"

@implementation ActionItem

-(BOOL)hasBeenTapped:(CGPoint)touchPoint {
    return CGRectContainsPoint(self.bounds, touchPoint);
}

-(void)tapAction:(SEL)method target:(id)target {
    [target performSelector:method];
}


@end
