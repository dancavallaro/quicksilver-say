//
//  Say_PluginAction.m
//  Say Plugin
//
//  Created by Daniel Cavallaro on 1/24/09.
//  Copyright Bucknell University 2009. All rights reserved.
//

#import "Say_PluginAction.h"

@implementation Say_PluginAction

- (QSObject *)performActionOnObject:(QSObject *)dObject{
	NSString *passedText;
	NSString *commandString;
	
	passedText = [dObject stringValue];
	commandString = [NSString stringWithFormat:@"say %@", passedText];
	
	const char *cmdStr = [commandString cStringUsingEncoding:NSUTF8StringEncoding];
	system(cmdStr);
	
	return nil;
}
@end
