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
@synthesize hourMarkerView2 = _hourMarkerView2;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.hourMarkerView1];
    [self.view addSubview:self.hourMarkerView2];
    
    // Do no thave a test, that makes me write this code.
    [self setTimeForTheHourMarkerViewLabel1];
    [self setTimeForTheHourMarkerViewLabel2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Initialise the two HourMarkerViews

//  Want to try and implement tell don't ask principle.
//  Lazily instantiate the hourMarker
- (HourMarkerView *)hourMarkerView1
{
    if (!_hourMarkerView1) {
        //In CGRectMake
        //first number is x starting points, can use this to set the distance between the views
        //second number is y location, so how high or low on the screen.
        //Last two values are the rectangles size.

        _hourMarkerView1 = [[HourMarkerView alloc] initWithFrame:CGRectMake(75.0f, 92.0f, 2.0f, 10.0f)];
    }
    return _hourMarkerView1;
}

- (HourMarkerView *)hourMarkerView2
{
    if (!_hourMarkerView2) {
        _hourMarkerView2 = [[HourMarkerView alloc] initWithFrame:CGRectMake(315.0f, 92.0f, 2.0f, 10.0f)];
    }
    return _hourMarkerView2;
}

#pragma mark - Set up for hourMarkerViewLabels

- (void)setTimeForTheHourMarkerViewLabel1
{
    self.hourMarkerViewLabel1.text = self.hourMarkerView1.currentHourString;
}

- (void)setTimeForTheHourMarkerViewLabel2
{
    self.hourMarkerViewLabel2.text = self.hourMarkerView2.nextHourString;
}






@end
