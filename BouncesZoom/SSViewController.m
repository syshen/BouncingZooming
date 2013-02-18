//
//  SSViewController.m
//  BouncesZoom
//
//  Created by Shen Steven on 2/18/13.
//  Copyright (c) 2013 syshen. All rights reserved.
//

#import "SSViewController.h"

@interface SSViewController ()

@property (nonatomic, strong) NSTimer *updateTimer;
@end

@implementation SSViewController {
  CGSize origImageSize;
  CGFloat preOffset;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  origImageSize = self.imageView.frame.size;
  preOffset = 0.0f;
  self.updateTimer = [NSTimer scheduledTimerWithTimeInterval:0.001f target:self selector:@selector(bouncesZoomImageView) userInfo:nil repeats:YES];
  [[NSRunLoop currentRunLoop] addTimer:self.updateTimer forMode:NSRunLoopCommonModes];

}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void) bouncesZoomImageView {

  if (self.scrollView.contentOffset.y > 0)
    return;

  CGFloat newOffset = self.scrollView.contentOffset.y;
  
  CGRect newFrame = CGRectMake(0, newOffset, origImageSize.width, (-newOffset) + origImageSize.height);
  self.imageView.frame = newFrame;
  
}
@end
