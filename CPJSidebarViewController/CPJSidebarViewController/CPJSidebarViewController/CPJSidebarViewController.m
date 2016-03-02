//
//  CPJSidebarViewController.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/2/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "CPJSidebarViewController.h"

#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface CPJSidebarViewController ()

@property (nonatomic, assign)BOOL                 closed;          //侧边栏关闭
@property (nonatomic, assign)CPJSlidebarDirection direction;       //滑动方向（仅水平方向）
//@property (nonatomic, assign)CGFloat              leftX;           //左边界
//@property (nonatomic, assign)CGFloat              rightX;          //右边界

@end

@implementation CPJSidebarViewController

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC{
    
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.leftVC = leftVC;
        self.mainVC = mainVC;
        self.speedRatio = 1.0;
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
        [self.mainVC.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.leftVC.view];
        self.leftVC.view.backgroundColor = [UIColor greenColor];
        [self.view addSubview:self.mainVC.view];
        self.mainVC.view.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC withRightVC:(UIViewController *)rightVC{
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.leftVC = leftVC;
        self.mainVC = mainVC;
        self.speedRatio = 1.0;
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
        [self.mainVC.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.leftVC.view];
        self.leftVC.view.backgroundColor = [UIColor greenColor];
        [self.view addSubview:self.mainVC.view];
        self.mainVC.view.backgroundColor = [UIColor redColor];
        self.rightVC = rightVC;
        [self.view addSubview:self.rightVC.view];
        self.rightVC.view.backgroundColor = [UIColor blueColor];
    }
    return self;
}


- (void)panAction:(UIPanGestureRecognizer *)sender{
    
    CGPoint point = [sender translationInView:self.view];
    self.leftDistance = 200;
    NSLog(@"midX:%f     x:%f",((SCREEN_WIDTH + self.leftDistance))/2, self.mainVC.view.center.x + point.x);
    if(sender.state == UIGestureRecognizerStateBegan){
        if (point.x < 0) {
            self.direction = CPJSDIRECTION_LEFT;
        } else if(point.x > 0) {
            self.direction = CPJSDIRECTION_RIGHT;
        } else {
            self.direction = CPJSDIRECTION_NONE;
        }
    }else if(sender.state == UIGestureRecognizerStateChanged){
        
        if(self.direction == CPJSDIRECTION_RIGHT){
            self.leftVC.view.hidden = NO;
        }
        
        
        [self slideAnimationWithPoint:point];
    }else if(sender.state == UIGestureRecognizerStateEnded){
        CGFloat midX = ((SCREEN_WIDTH + self.leftDistance)*0.5);
        
        if(self.mainVC.view.center.x + point.x < midX){
            [self performOpenMainViewAnimation];
        }else{
            [self performOpenLeftViewAnimation];
        }
        
        
        
    }
    
    
    
    [sender setTranslation:CGPointMake(0, 0) inView:self.view];
}

- (void)performOpenLeftViewAnimation{
    
    [UIView beginAnimations:nil context:nil];
    self.mainVC.view.transform	= CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
    self.mainVC.view.center		= CGPointMake(((SCREEN_WIDTH/2 + self.leftDistance)), self.mainVC.view.center.y);
    self.closed					= NO;
    [UIView commitAnimations];
}

- (void)performOpenMainViewAnimation{
    
    [UIView animateWithDuration:0.2 animations:^{
        self.mainVC.view.transform	= CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
        self.mainVC.view.center		= CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2);
        self.closed					= NO;
    } completion:^(BOOL finished) {
        self.leftVC.view.hidden = YES;
    }];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView commitAnimations];
}

- (void)slideAnimationWithPoint:(CGPoint)point{
    self.mainVC.view.center = CGPointMake(self.mainVC.view.center.x + point.x * self.speedRatio, self.mainVC.view.center.y);
}

@end
