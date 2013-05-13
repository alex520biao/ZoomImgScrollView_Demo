//
//  ViewController.h
//  ZoomImgScrollView_Demo
//
//  Created by alex on 13-5-13.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZoomImgScrollView.h"
@interface ViewController : UIViewController
@property (nonatomic, strong) ZoomImgScrollView *zoomView;
-(IBAction)changeContentMode:(id)sender;
-(IBAction)changeContentImg:(id)sender;


@end
