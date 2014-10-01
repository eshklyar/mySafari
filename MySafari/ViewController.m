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


-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    NSURL *url = [NSURL URLWithString: textField.text];
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL: url];
    [self.webView loadRequest:urlRequest];
    return YES;



}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
