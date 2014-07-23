//
//  ViewController.m
//  RemoteController
//
//  Created by Hyohyeon Jeong on 7/23/14.
//  Copyright (c) 2014 HyohyeonJeong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *RemoteControllerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *fullURL = @"";
//    NSURL *url = [NSURL URLWithString:fullURL];
//    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"../controller" ofType:@"html"];
    NSString *htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [_RemoteControllerView loadHTMLString:htmlString baseURL:nil];
//    [_RemoteControllerView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
