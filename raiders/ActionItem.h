//
//  ActionItem.h
//  raiders
//
//  Created by Janimatti Ellonen on 8.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sprite.h"

@interface ActionItem : Sprite {
    
}

- (BOOL)hasBeenTapped:(CGPoint)touchPoint;

- (void)tapAction:(SEL)method target:(id)target;

@end
