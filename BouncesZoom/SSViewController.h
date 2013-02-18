//
//  SSViewController.h
//  BouncesZoom
//
//  Created by Shen Steven on 2/18/13.
//  Copyright (c) 2013 syshen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end
