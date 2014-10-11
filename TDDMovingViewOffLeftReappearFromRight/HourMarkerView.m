//
//  HourMarkerView.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 11/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import "HourMarkerView.h"

@implementation HourMarkerView
@synthesize hourString = _hourString;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (NSString *)hourString
{
    
    _hourString = [self currentHourPlusOneString];
    return _hourString;
}

- (NSString *)currentHourPlusOneString
{
    NSDate *currentHourPlusOne = [[NSDate date] dateByAddingTimeInterval:60 * 60];
    NSDateFormatter *hourDateFormatter = [[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    return [[hourDateFormatter stringFromDate:currentHourPlusOne] lowercaseString];
}

@end
