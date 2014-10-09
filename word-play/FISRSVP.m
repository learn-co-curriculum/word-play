//
//  FISRSVP.m
//  word-play
//
//  Created by Joe Burgess on 10/8/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISRSVP.h"

@implementation FISRSVP

-(void)setStart:(NSDate *)start
{
    if (!self.end) {
        _start=start;
        return;
    }

    if ([self.end compare:start] == NSOrderedDescending) {
        _start=start;
    }
}

-(void)setEnd:(NSDate *)end
{
    if (!self.start) {
        _end=end;
        return;
    }

    if ([self.start compare:end] == NSOrderedAscending) {
        _end=end;
    }
}

-(void)setEventLocation:(CLLocation *)eventLocation
{
    BOOL validLongitude =eventLocation.coordinate.longitude >=-180.0 && eventLocation.coordinate.longitude <= 180.0;
    BOOL validLatitude =eventLocation.coordinate.latitude >=-90.0 && eventLocation.coordinate.latitude <=90.0;

    if (validLatitude && validLongitude) {
        _eventLocation = eventLocation;
    }
}

@end
