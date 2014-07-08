//
//  PCEAppDelegate.h
//  UW Demo 1
//
//  Created by Jordan Dobson on 7/4/14.
//  Copyright (c) 2014 Jordan Dobson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// Public Interface
// All the things I want to expose
// Model Object is typically a NSObject
//

@interface PCEAppDelegate : NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate>

@property (assign) IBOutlet NSWindow *window;

// Make a Type of Thing to use on the interface or elsewhere publicly

@property IBOutlet NSTextField          *theInputField;
@property NSButton             *theRecordButton;

@property          NSMutableArray       *theArray;
@property          NSSpeechSynthesizer  *synthesizer;

@end