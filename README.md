

# Word Play

## Instructions

  1. Create a new class called `FISRSVP`.
  2. We are going to use the `CLLocation` class which is in the Core Location framework. So we need to add the framework by clicking on the project (blue icon at the top of the file navigator). Then select Build Phases. Open the Link Binary with Libraries drop down. Hit the plus and add the Core Location Framework. Now, everywhere you use `CLLocation` you'll need to import `<CoreLocation/CoreLocation.h>`.
  3. This class should be able to hold the following things as properties
    * Beginning Date/Time
    * Ending Date/Time
    * Event Name
    * Event Location (As a `CLLocation`)
  3. For these properties though we have a few validations to make sure these properties make sense. These should be implemented in the setters for the respective properties.
    * Start date must be before End Date.
    * The location latitude must be between `-90.0` and `90.0`
    * The location longitude must be between `-180.0` and `180.0`

## Advanced

Comment out the tests and let's get this working in a different way. Instead of just setting things to `nil`. Let's actually raise an [NSError](http://nshipster.com/nserror/). The first question to ask is can we still use the standard property setters? Go ahead and implement a solution that raises an `NSError` that includes a proper error message and some advice on how to fix the error.

## Hints

  * [Comparing `NSDate` Objects](http://stackoverflow.com/questions/5965044/how-to-compare-two-nsdates-which-is-more-recent)

<a href='https://learn.co/lessons/word-play' data-visibility='hidden'>View this lesson on Learn.co</a>
