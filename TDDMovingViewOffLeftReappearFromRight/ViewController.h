//
//  ViewController.h
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 11/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HourMarkerView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) HourMarkerView *hourMarkerView1;
@property (strong, nonatomic) HourMarkerView *hourMarkerView2;
@property (strong, nonatomic) IBOutlet UILabel *hourMarkerViewLabel1;
@property (strong, nonatomic) IBOutlet UILabel *hourMarkerViewLabel2;

- (HourMarkerView *)hourMarkerView1;
- (HourMarkerView *)hourMarkerView2;

- (void)setTimeForTheHourMarkerViewLabel1;
- (void)setTimeForTheHourMarkerViewLabel2;

@end

