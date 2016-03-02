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

@end

@implementation CPJSidebarViewController

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC{
    
    if(self = [super init]){
        self.view.backgroundColor = [UIColor whiteColor];
        self.leftVC = leftVC;
        self.mainVC = mainVC;
        self.speedRatio = 1.0;
        self.leftDistance = 300;
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
        self.leftDistance = 300;
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
        [self.mainVC.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.leftVC.view];
        self.leftVC.view.backgroundColor = [UIColor greenColor];
        
        self.rightVC = rightVC;
        [self.view addSubview:self.rightVC.view];
        self.rightVC.view.backgroundColor = [UIColor blueColor];
        
        [self.view addSubview:self.mainVC.view];
        self.mainVC.view.backgroundColor = [UIColor redColor];
        
    }
    return self;
}


- (void)panAction:(UIPanGestureRecognizer *)sender{
    
    CGPoint point = [sender translationInView:self.view];
    CGFloat px = self.mainVC.view.center.x + point.x;             //当前横坐标
    NSLog(@"midX:%f     x:%f", SCREEN_WIDTH/2, self.mainVC.view.center.x + point.x);
    if(sender.state == UIGestureRecognizerStateBegan){

    }else if(sender.state == UIGestureRecognizerStateChanged){
        
        if(px >= SCREEN_WIDTH/2){                                 //向右滑动
            self.leftVC.view.hidden = NO;
            self.rightVC.view.hidden = YES;
        }else{                                                    //向左滑动
            self.leftVC.view.hidden = YES;
            self.rightVC.view.hidden = NO;
        }
        
        [self slideAnimationWithPoint:point];
    }else if(sender.state == UIGestureRecognizerStateEnded){
        
        if(px >= SCREEN_WIDTH/2){                                 //向右滑动
            CGFloat midX = ((SCREEN_WIDTH + self.leftDistance)*0.5);
            if(px < midX){
                [self performOpenMainViewAnimation];
            }else{
                [self performOpenLeftViewAnimation];
            }
        }else{                                                    //向左滑动
            CGFloat midX = ((SCREEN_WIDTH - self.leftDistance)*0.5);
            if(px > midX){
                [self performOpenMainViewAnimation];
            }else{
                [self performOpenRightViewAnimation];
            }
        }

    }

    [sender setTranslation:CGPointMake(0, 0) inView:self.view];
}

- (void)performOpenLeftViewAnimation{
    
    [UIView beginAnimations:nil context:nil];
    self.mainVC.view.transform	= CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
    self.mainVC.view.center		= CGPointMake(((SCREEN_WIDTH/2 + self.leftDistance)), self.mainVC.view.center.y);
    [UIView commitAnimations];
}

- (void)performOpenMainViewAnimation{
    
    [UIView animateWithDuration:0.2 animations:^{
        self.mainVC.view.transform	= CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
        self.mainVC.view.center		= CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2);
    } completion:^(BOOL finished) {
        self.leftVC.view.hidden = YES;
    }];
}

- (void)performOpenRightViewAnimation{
    [UIView beginAnimations:nil context:nil];
    self.mainVC.view.transform	= CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
    self.mainVC.view.center		= CGPointMake(((SCREEN_WIDTH/2 - self.leftDistance)), self.mainVC.view.center.y);
    [UIView commitAnimations];
}

- (void)slideAnimationWithPoint:(CGPoint)point{
    self.mainVC.view.center = CGPointMake(self.mainVC.view.center.x + point.x * self.speedRatio, self.mainVC.view.center.y);
}

@end
