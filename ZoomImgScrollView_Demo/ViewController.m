//
//  ViewController.m
//  ZoomImgScrollView_Demo
//
//  Created by alex on 13-5-13.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize zoomView=_zoomView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    //单张图片缩放查看
    ZoomImgScrollView *zoomView=[[ZoomImgScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44)];//ScrollView的窗口大小
    zoomView.minimumZoomScale=1;//最小缩放值，默认1
    zoomView.maximumZoomScale=3;//最大缩放值
    [zoomView setScrollViewContentMode:UIScrollViewContentModeShorter];//设置ContentMode
    [zoomView setContentImage:[UIImage imageNamed:@"f59a1d7b0b2f388854f15353b51b849b.jpg"]];//设置ContentImage
    [self.view addSubview:zoomView];
    self.zoomView=zoomView;
    
    UIButton *longterBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [longterBtn setFrame:CGRectMake(0, self.view.bounds.size.height-44, 73, 44)];
    [longterBtn setTitle:@"longter" forState:UIControlStateNormal];
    [longterBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [longterBtn addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:longterBtn];
    
    UIButton *shoterBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    shoterBtn.tag=1;
    [shoterBtn setFrame:CGRectMake(82, self.view.bounds.size.height-44, 73, 44)];
    [shoterBtn setTitle:@"shoter" forState:UIControlStateNormal];
    [shoterBtn addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
    [shoterBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:shoterBtn];
    
    
    UIButton *img1Btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    img1Btn.tag=0;
    [img1Btn setFrame:CGRectMake(166, self.view.bounds.size.height-44, 73, 44)];
    [img1Btn setTitle:@"IMG1" forState:UIControlStateNormal];
    [img1Btn addTarget:self action:@selector(changeContentImg:) forControlEvents:UIControlEventTouchUpInside];
    [img1Btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:img1Btn];

    
    UIButton *img2Btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    img2Btn.tag=1;
    [img2Btn setFrame:CGRectMake(247, self.view.bounds.size.height-44, 73, 44)];
    [img2Btn setTitle:@"IMG2" forState:UIControlStateNormal];
    [img2Btn addTarget:self action:@selector(changeContentImg:) forControlEvents:UIControlEventTouchUpInside];
    [img2Btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:img2Btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeContentMode:(id)sender{
    UIButton *btn=(UIButton *)sender;
    if (btn.tag==0) {
        [self.zoomView setScrollViewContentMode:UIScrollViewContentModeLonger];//设置ContentMode
    }else{
        [self.zoomView setScrollViewContentMode:UIScrollViewContentModeShorter];//设置ContentMode
    }
}

-(IBAction)changeContentImg:(id)sender{
    UIButton *btn=(UIButton *)sender;
    if (btn.tag==0) {
        [self.zoomView setContentImage:[UIImage imageNamed:@"fc1f4134970a304e89259cd5d0c8a786c9175c9d.jpg"]];//设置ContentImage
    }else{
        [self.zoomView setContentImage:[UIImage imageNamed:@"f59a1d7b0b2f388854f15353b51b849b.jpg"]];//设置ContentImage
    }
}

@end
