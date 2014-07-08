//
//  PCEAppDelegate.m
//  UW Demo 1
//
//  Created by Jordan Dobson on 7/4/14.
//  Copyright (c) 2014 Jordan Dobson. All rights reserved.
//

#import "PCEAppDelegate.h"

@implementation PCEAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

    // Two stage initiation
    // creating space in memory for array

    NSArray  *voices  = [NSSpeechSynthesizer availableVoices];
    NSString *myVoice = voices[ voices.count - 1 ];

    // MAKE SOME OBJECTS
    self.theArray    = [[NSMutableArray alloc] init];
    self.synthesizer = [[NSSpeechSynthesizer alloc] initWithVoice:myVoice];

    self.synthesizer.delegate = self;

    //    NSLog(@"%@", voices);
    //    NSLog(@"%@", @(voices.count));

    //  PART 3
    //  self.theInputField.textColor = [NSColor redColor];
    //  self.theInputField.stringValue = @"Hello World.";
    //  PART 2
    //  NSString *myName = @"Jordan";
    //  NSLog(@"%@", myName);
    //  NSLog(@"%lu", [myName length]);
    //  NSArray *myArray = @[ myName ];
    //  PART 1
    //  NSLog(@"Hello World");
    //  NSLog(@"%i", 3);
    //  NSLog(@"%10.2f", 3.14);
    //  NSInteger myInteger = 456;

}

-(void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    NSLog(@"Stopped Speaking");
}

-(IBAction)recordInput:(id)sender
{
    // Get current Input
    NSString *curInput = _theInputField.stringValue;
    // Put In Array
    [self.theArray addObject:curInput];

    NSLog(@"%@", self.theArray);
    _theInputField.stringValue = @"";
}

- (IBAction)speakInput:(id)sender
{
    [self.synthesizer startSpeakingString: [_theArray componentsJoinedByString:@" "]];
}

//-(IBAction)helloButtonPushed:(id)sender
//{
//    // self.theInputField.stringValue = @"hello";
//    [[self theInputField] setStringValue: @"Hello"];
//}
//
//-(IBAction)goodbyeButtonPushed:(id)sender
//{
//    NSString *theString       = _theInputField.stringValue;
//    NSString *theMethodString = [self.theInputField stringValue];
//
//    NSLog(@"%@", theString);
//    NSLog(@"%@", theMethodString);
//}

@end
