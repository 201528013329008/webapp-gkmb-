//
//  ViewController.m
//  国壳漫步
//
//  Created by 691 on 2017/7/12.
//  Copyright © 2017年 691. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIToolbar *back;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *forward;

@end

@implementation ViewController
- (IBAction)back:(id)sender {
    [self.webview goBack];
}
- (IBAction)forward:(id)sender {
     [self.webview goForward];
}
- (IBAction)reload:(id)sender {
    [self.webview reload];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview.delegate = self;
    // 网页内容缩小到适应整个设备屏幕
    //    self.webView.scalesPageToFit = YES;
    
    // 检测各种特殊的字符串：比如电话、网站
    self.webview.dataDetectorTypes = UIDataDetectorTypeAll;

    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://gkmb5.herokuapp.com"]]];
    
  
//    self.webview.scrollView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://gkmb5.herokuapp.com"] options:@{} completionHandler:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
