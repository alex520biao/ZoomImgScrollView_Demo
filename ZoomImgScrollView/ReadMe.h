

//单张图片缩放查看
ZoomImgScrollView *zoomView=[[ZoomImgScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)];//ScrollView的窗口大小
[zoomView setScrollViewContentMode:UIScrollViewContentModeShorter];//设置ContentMode
[zoomView setContentImage:[UIImage imageNamed:@"0B1.jpg"]];//设置ContentImage
zoomView.bouncesZoom=YES;//边界弹性
zoomView.minimumZoomScale=1;//最小缩放值，默认1
zoomView.maximumZoomScale=3;//最大缩放值，默认3
[self.view addSubview:zoomView];

/*ZoomImgScrollView特点*/
1.支持设置ContentMode
UIScrollViewContentModeLonger   //缩放用于完整显示图片内容
UIScrollViewContentModeShorter  //以短的那边为准，填满scrollView(其余部分拖动查看)
2.双击放大,再次双击缩小
3.捏合缩小,双指放大
4.支持修改scrollViewContentMode和contentImage属性后动态更新UI显示