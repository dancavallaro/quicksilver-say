//
//  Say_PluginSource.m
//  Say Plugin
//
//  Created by Daniel Cavallaro on 1/24/09.
//  Copyright Bucknell University 2009. All rights reserved.
//

#import "Say_PluginSource.h"
#import <QSCore/QSObject.h>


@implementation Say_PluginSource
- (BOOL)indexIsValidFromDate:(NSDate *)indexDate forEntry:(NSDictionary *)theEntry{
    return YES;
}

- (NSImage *) iconForEntry:(NSDictionary *)dict{
    return nil;
}


// Return a unique identifier for an object (if you haven't assigned one before)
//- (NSString *)identifierForObject:(id <QSObject>)object{
//    return nil;
//}

- (NSArray *) objectsForEntry:(NSDictionary *)theEntry{
    NSMutableArray *objects=[NSMutableArray arrayWithCapacity:1];
    QSObject *newObject;
	
	newObject=[QSObject objectWithName:@"TestObject"];
	[newObject setObject:@"" forType:Say_PluginType];
	[newObject setPrimaryType:Say_PluginType];
	[objects addObject:newObject];
  
    return objects;
    
}


// Object Handler Methods

/*
- (void)setQuickIconForObject:(QSObject *)object{
    [object setIcon:nil]; // An icon that is either already in memory or easy to load
}
- (BOOL)loadIconForObject:(QSObject *)object{
	return NO;
    id data=[object objectForType:kSay_PluginType];
	[object setIcon:nil];
    return YES;
}
*/
@end
