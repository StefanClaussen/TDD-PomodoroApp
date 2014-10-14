//
//  HourMarkerView.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 11/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import "HourMarkerView.h"

@implementation HourMarkerView
@synthesize currentHourString = _currentHourString;
@synthesize nextHourString = _nextHourString;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGPoint startOfHorizontalLine = (CGPointMake(1.0f, 0.0f));
    CGPoint endOfHorizontalLine = (CGPointMake(1.0f, 10.0f));
    
    UIColor * lineColour = [UIColor colorWithRed:40.0f/255.0f green:34.0f/255.0f blue:34.0f/255.0f alpha:1.0f];
    [lineColour setStroke];
    
    UIBezierPath *horizontalLine = [UIBezierPath bezierPath];
    [horizontalLine moveToPoint:startOfHorizontalLine];
    [horizontalLine addLineToPoint:endOfHorizontalLine];
    [horizontalLine stroke];
}

- (NSString *)currentHourString
{
    if (! _currentHourString) _currentHourString = [self currentHourStringFormatter];
    return _currentHourString;
}

- (NSString *)currentHourStringFormatter
{
    NSDate *currentHour = [NSDate date];
    NSDateFormatter *hourDateFormatter = [[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    return [[hourDateFormatter stringFromDate:currentHour] lowercaseString];
}

- (NSString *)nextHourString
{
    if (! _nextHourString) _nextHourString = [self currentHourPlusOneFormatter];
    return _nextHourString;
}

- (NSString *)currentHourPlusOneFormatter
{
    NSDate *currentHourPlusOne = [[NSDate date] dateByAddingTimeInterval:60 * 60];
    NSDateFormatter *hourDateFormatter = [[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    return [[hourDateFormatter stringFromDate:currentHourPlusOne] lowercaseString];
}

@end
