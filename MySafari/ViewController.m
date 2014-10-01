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


/*    Loading on start

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    NSLog(@"url=%@", @"http://www.google.com");
    return YES;
}

*/


//show spinner on tip left while website is loading
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

//stop spinner
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}



//  http apendix
//  NSURL *urlTextField =[NSURL URLWithString:@"http://" %@, urlTextField.textField];




- (BOOL) textFieldShouldReturn:(UITextField *)textField {

    if([textField.text containsString:<#(NSString *)#>]){
    }

    NSString *urlString = textField.text;

     NSURL *url =[NSURL URLWithString:urlString];
     NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
     [self.webView loadRequest:urlRequest];

    return YES;
}


- (IBAction)onBackButtonPressed:(id)sender {
    [self.webView goBack];
}

- (IBAction)onForwardButtonPressed:(id)sender {
    [self.webView goForward];
}

- (IBAction)onStoppedLoadingButtonPressed:(id)sender {
    [self.webView stopLoading];
}
- (IBAction)onReloadButtonPressed:(id)sender {
    [self.webView reload];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)enableButtons {
    self.webView.canGoBack;
    self.webView.canGoForward;
    self.webView.loading;
}


@end
