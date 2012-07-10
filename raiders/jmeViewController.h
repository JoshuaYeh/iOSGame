//
//  jmeViewController.h
//  raiders
//
//  Created by Janimatti Ellonen on 6.7.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

#import "GameController.h"

@interface jmeViewController : GLKViewController {
    GameController *sharedGameController;
}

@end
