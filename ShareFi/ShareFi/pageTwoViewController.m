//
//  pageTwoViewController.m
//  ShareFi
//
//  Created by Miles Bernhard on 4/23/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import "pageTwoViewController.h"

@interface pageTwoViewController ()

@end

@implementation pageTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit
{
    NSString *ssidInput = _ssidText.text;
    NSString *passInput = _passText.text;
    NSString *combined = [NSString stringWithFormat:@"SSID: %@, Pass: %@",ssidInput, passInput];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Entered:"
                                                    message: combined
                                                   delegate:nil
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Confirm", nil];
    alert.tag = 100;
    [alert show];
    }
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (alertView.tag == 100) {
               if (buttonIndex == 0) {
            
        }
    }
    else {
    }
}

@end
