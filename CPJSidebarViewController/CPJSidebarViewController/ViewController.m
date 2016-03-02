//
//  ViewController.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/2/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "ViewController.h"
#import "CPJSidebarViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAction:(id)sender {
    
    UIViewController *leftVC = [UIViewController new];
    UIViewController *mainVC = [UIViewController new];
    
    CPJSidebarViewController *sidebarVC = [[CPJSidebarViewController alloc] initWithLeftVC:leftVC withMainVC:mainVC];
    [self.navigationController pushViewController:sidebarVC animated:YES];
    
}

@end
