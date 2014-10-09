//
//  FISRSVP.h
//  word-play
//
//  Created by Joe Burgess on 10/8/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface FISRSVP : NSObject

@property (strong, nonatomic) NSDate *start;
@property (strong, nonatomic) NSDate *end;
@property (strong, nonatomic) NSString *eventName;
@property (strong, nonatomic) CLLocation *eventLocation;

@end
