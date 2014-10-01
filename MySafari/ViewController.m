//
//  ViewController.m
//  MySafari
//
//  Created by Edik Shklyar on 10/1/14.
//  Copyright (c) 2014 Edik Shklyar. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <UIWebViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//show spinner on tip left while website is loading
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

//stop spinner
- (void)webViewDidStopLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    NSURL *url = [NSURL URLWithString: textField.text];
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL: url];
    [self.webView loadRequest:urlRequest];
    return YES;
}

- (IBAction)onStoppedLoadingButtonPressed:(id)sender {
    [self.webView stopLoading];
}

- (IBAction)onBackButtonPressed:(id)sender {
    [self.webView goBack];
}

- (IBAction)onForwardButtonPressed:(id)sender {
    [self.webView goForward];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
