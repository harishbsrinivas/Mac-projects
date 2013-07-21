//
//  sidAppDelegate.m
//  SimpleCalc
//
//  Created by Harish Srinivas on 7/21/13.
//  Copyright (c) 2013 indus5.com. All rights reserved.
//

#import "sidAppDelegate.h"

@implementation sidAppDelegate

/*
 Create the user interface setter and getter functions
 */

// Buttons
@synthesize mAdd;
@synthesize mSubtract;
@synthesize mMutliply;
@synthesize mDivide;

// Text Fields
@synthesize mValue1;
@synthesize mValue2;
@synthesize mResult;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

/*
 Create the App implementation for the buttons
 */

- (IBAction)myButtonAction:(id)a_sender;
{
    
    // Get the button title (+, -, x, or ÷) to
    // determine which operation the App will
    // preform
    NSString *l_operation = [a_sender title];
    
    // Get a double precision number from the
    // first text field
    double l_value1 = [mValue1 doubleValue];
    
    // Get a double precision number from the
    // second text field
    double l_value2 = [mValue2 doubleValue];
    
    // Create a double precision variable to
    // hold the result of l_value1 <op> l_value2
    double l_result;
    
    // If the operation was addition, then
    // add the two values
    if ([@"+" isEqual: l_operation])
    {
        l_result = l_value1 + l_value2;
    }
    // If the operation was subtraction, then
    // subtract the two values
    else if ([@"-" isEqual: l_operation])
    {
        l_result = l_value1 - l_value2;
    }
    // If the operation was multiplication, then
    // multiply the two values
    else if ([@"x" isEqual: l_operation])
    {
        l_result = l_value1 * l_value2;
    }
    // The operation must have been division, so
    // divide the first value by the second value
    else
    {
        l_result = l_value1 / l_value2;
    }
    
    // Set the result text field to the result
    [mResult setDoubleValue:l_result];
    
}


@end
