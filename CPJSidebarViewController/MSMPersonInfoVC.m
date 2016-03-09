//
//  MSMPersonInfoVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMPersonInfoVC.h"

#import "MSMActivityVC.h"
#import "MSMFeedVCViewController.h"
#import "MSMFaceClipperVC.h"

@interface MSMPersonInfoVC ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic) NSMutableArray *capturedImages;
@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation MSMPersonInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userAvatarImg.layer.masksToBounds = YES;
    self.userAvatarImg.layer.cornerRadius = self.userAvatarImg.frame.size.width/2;
    self.userAvatarImg.contentMode = UIViewContentModeScaleAspectFill;
    [self.userAvatarImg addTarget:self action:@selector(userAvatarImgAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)messageAction:(id)sender {
    
    
    
    UIViewController *vc = [MSMFeedVCViewController new];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    nav.view.layer.shadowColor = [UIColor grayColor].CGColor;
    nav.view.layer.shadowRadius = 10;
    nav.view.layer.shadowOpacity = 0.9;
    
    [self.mainVC changeMainViewController:nav];
}

- (IBAction)activityAction:(id)sender {
    
    UIViewController *vc = [MSMActivityVC new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.view.layer.shadowColor = [UIColor grayColor].CGColor;
    nav.view.layer.shadowRadius = 10;
    nav.view.layer.shadowOpacity = 0.9;
    [self.mainVC changeMainViewController:nav];
    
}

- (void)showImagePickerForSourceType:(UIImagePickerControllerSourceType)sourceType
{
    if (self.userAvatarImg.isAnimating)
    {
        [self.userAvatarImg stopAnimating];
    }
    
    if (self.capturedImages.count > 0)
    {
        [self.capturedImages removeAllObjects];
    }
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.sourceType = sourceType;
    imagePickerController.delegate = self;
    
    if (sourceType == UIImagePickerControllerSourceTypeCamera)
    {
        /*
         The user wants to use the camera interface. Set up our custom overlay view for the camera.
         */
        imagePickerController.showsCameraControls = NO;
        
        /*
         Load the overlay view from the OverlayView nib file. Self is the File's Owner for the nib file, so the overlayView outlet is set to the main view in the nib. Pass that view to the image picker controller to use as its overlay view, and set self's reference to the view to nil.
         */
        [[NSBundle mainBundle] loadNibNamed:@"OverlayView" owner:self options:nil];
    }
    
    self.imagePickerController = imagePickerController;
    [self presentViewController:imagePickerController animated:YES completion:nil];
}


- (void)userAvatarImgAction{
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
}

#pragma mark - UIImagePickerControllerDelegate

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    [self.capturedImages addObject:image];
    
    MSMFaceClipperVC *vc = [[MSMFaceClipperVC alloc] initWithNibName:@"MSMFaceClipperVC" bundle:nil];
    vc.image = self.userAvatarImg;
    
    vc.view.frame = self.view.frame;
    [self dismissViewControllerAnimated:YES
                             completion:nil];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    vc.imageClipping.image = image;

    
    
}// imagePickerController


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}// imagePickerControllerDidCancel

@end
