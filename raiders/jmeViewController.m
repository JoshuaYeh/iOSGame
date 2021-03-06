//
//  ViewController.m
//  Raiders
//
//  Created by James Sugrue on 14/08/11.
//  Copyright (c) 2011 SoftwareX Ltd. All rights reserved.
//

#import "jmeViewController.h"
#import "GameController.h"
#import "AbstractSceneController.h"

@interface jmeViewController () {
    
}
@property (strong, nonatomic) EAGLContext *context;
@property (strong, nonatomic) GLKBaseEffect *effect;

- (void)setupGL;
- (void)tearDownGL;

@end

@implementation jmeViewController

@synthesize context = _context;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    if (!self.context) {
        NSLog(@"Failed to create ES context");
    }
    
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    [self setupGL];
    sharedGameController = [GameController sharedGameController];
}

- (void)viewDidUnload
{    
    [super viewDidUnload];
    
    [self tearDownGL];
    
    if ([EAGLContext currentContext] == self.context) {
        [EAGLContext setCurrentContext:nil];
    }
	self.context = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc. that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)setupGL
{
    [EAGLContext setCurrentContext:self.context];
}

- (void)tearDownGL
{
    [EAGLContext setCurrentContext:self.context];
}

#pragma mark - GLKView and GLKViewController delegate methods

- (void)update
{
    [sharedGameController updateWorld];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    [sharedGameController playCurrentScene];
    
}

#pragma mark - Touch based methods

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	// Pass touch events onto the current scene
	[[sharedGameController currentScene] touchesEnded:touches withEvent:event view:self.view];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    //[[sharedGameController currentScene] touchesMoved:touches withEvent:event view:self.view];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //[[sharedGameController currentScene] touchesBegan:touches withEvent:event view:self.view];
}

@end
