//
//  ICOFamilyAppDelegate.m
//  ICOFamily
//
//  Created by Alex Zielenski on 8/2/10.
//  Copyright 2010 Alex Zielenski. All rights reserved.
//

#import "ICOFamilyAppDelegate.h"
#import "ICOFamily.h"

@implementation ICOFamilyAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	ICOFamily *fam = [ICOFamily family];
	[fam readFromData:[NSData dataWithContentsOfURL:[NSURL fileURLWithPath:@"/Users/Alex/Desktop/lol.ico"]]];
	[fam.data writeToFile:@"/Users/Alex/Desktop/lol2.ico" atomically:NO];
}

@end