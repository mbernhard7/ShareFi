//
//  pageTwoViewController.m
//  ShareFi
//
//  Created by Miles Bernhard on 4/23/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import "pageTwoViewController.h"
#import "ViewController.h"
#import "pageThreeViewController.h"
#import <SystemConfiguration/CaptiveNetwork.h>

@interface pageTwoViewController ()

@end

@implementation pageTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CFArrayRef myArray = CNCopySupportedInterfaces();
    CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0));
    ssidInput= CFDictionaryGetValue(myDict, kCNNetworkInfoKeySSID);
    _ssidText.text=ssidInput;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit
{
    ssidInput= _ssidText.text;
    passInput= _passText.text;
    [self performSegueWithIdentifier:@"twotothree" sender:self];
  
}

@end
