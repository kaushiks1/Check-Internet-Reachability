//
//  ViewController.m
//  Internet_Reachability
//
//  Created by Apple on 12/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([Utility isNetworkReachable])
    {
        NSLog(@"Network Reachable");
    }
    else
    {
        NSLog(@"Network is not Rechable");
    }
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
