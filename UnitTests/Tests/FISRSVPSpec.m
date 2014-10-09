//
//  FISRSVPSpec.m
//  word-play
//
//  Created by Joe Burgess on 10/9/14.
//  Copyright 2014 The Flatiron School. All rights reserved.
//

#import "Specta.h"
#import "FISRSVP.h"


SpecBegin(FISRSVP)

describe(@"FISRSVP", ^{

    __block FISRSVP *rsvp;

    beforeEach(^{
        rsvp = [[FISRSVP alloc] init];
    });

    describe(@"Start Date Validator", ^{
        it(@"Should accept any start date if end date is nil", ^{
            rsvp.start = [NSDate date];
            expect(rsvp.start).toNot.beNil();
        });

        it(@"Should accept a start date before the end date", ^{
            rsvp.end = [NSDate date];
            NSDate *yesterday =[NSDate dateWithTimeIntervalSinceNow:-86400];
            rsvp.start =yesterday;
            expect(rsvp.start).toNot.beNil();
            expect(rsvp.start).to.equal(yesterday);
        });
        it(@"Should reject a start date after the end date", ^{
            NSDate *yesterday =[NSDate dateWithTimeIntervalSinceNow:-86400];
            rsvp.end  = yesterday;
            rsvp.start =[NSDate date];
            expect(rsvp.start).to.beNil();
        });
    });

    describe(@"End Date Validator", ^{
        __block NSDate *yesterday;
        __block NSDate *now;

        beforeAll(^{
            yesterday =[NSDate dateWithTimeIntervalSinceNow:-86400];
            now =[NSDate date];
        });

        it(@"Should accept any end date if start date is nil", ^{
            rsvp.end = [NSDate date];
            expect(rsvp.end).toNot.beNil();
        });

        it(@"Should accept an end date after the start date", ^{
            rsvp.start =yesterday;
            rsvp.end = now;
            expect(rsvp.end).toNot.beNil();
            expect(rsvp.end).to.equal(now);
        });
        it(@"Should reject an end date before the start date", ^{
            rsvp.start =now;
            rsvp.end = yesterday;
            expect(rsvp.end).to.beNil();
        });
    });

    describe(@"Location Validator", ^{
        it(@"Should reject an invalid CLLocation", ^{
            CLLocation *invalidLocation = [[CLLocation alloc] initWithLatitude:-23434.4 longitude:234];
            rsvp.eventLocation = invalidLocation;
            expect(rsvp.eventLocation).to.beNil();
        });
        it(@"Should accept a valid CLLocation", ^{
            CLLocation *validLocation = [[CLLocation alloc] initWithLatitude:-23.4 longitude:23];
            rsvp.eventLocation = validLocation;
            expect(rsvp.eventLocation).to.equal(validLocation);
        });
    });
});

SpecEnd
