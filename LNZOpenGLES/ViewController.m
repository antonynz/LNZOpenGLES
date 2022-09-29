//
//  ViewController.m
//  LNZOpenGLES
//
//  Created by zeng on 2022/9/29.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) EAGLContext *context;
@property (nonatomic, assign) GLuint shaderProgram;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupContext];
    [self setupShader];
}

- (void)setupContext {
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES3];
    if (self.context == nil) {
        NSLog(@"Failed to create Context");
    }
    
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    [EAGLContext setCurrentContext:self.context];
}

- (void)setupShader {
    
}

- (void)update {
    
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    glClearColor(1.0, 0.2, 0.5, 1);
    glClear(GL_COLOR_BUFFER_BIT);
    glUseProgram(self.shaderProgram);
}

@end
