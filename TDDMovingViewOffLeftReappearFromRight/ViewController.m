//
//  ViewController.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 11/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize hourMarkerView1 = _hourMarkerView1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Create the two HourMarkerViews

//  Want to try and implement tell don't ask principle.
//  Lazily instantiate the hourMarker
- (HourMarkerView *)hourMarkerView1
{
    if (!_hourMarkerView1) {
        _hourMarkerView1 = [[HourMarkerView alloc] initWithFrame:CGRectMake(315.0f, 92.0f, 2.0f, 10.0f)];
    }
    return _hourMarkerView1;
}

@end
