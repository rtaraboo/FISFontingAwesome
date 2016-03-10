//
//  ViewController.m
//  FISFontingAwesome
//
//  Created by Rosario Tarabocchia on 3/10/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import <CWStatusBarNotification/CWStatusBarNotification.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonExampleOutlet;
@property (nonnull) CWStatusBarNotification *notification;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:50];
    self.notification = [CWStatusBarNotification new];
    NSAttributedString *starIcon1 = [starIcon attributedString];
    
    [self.buttonExampleOutlet setAttributedTitle:starIcon1 forState:0];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonExampleAction:(id)sender {
    
    [self.notification displayNotificationWithMessage:@"YOU STINK!"
                                          forDuration:1.0f];
    
    
}

@end
