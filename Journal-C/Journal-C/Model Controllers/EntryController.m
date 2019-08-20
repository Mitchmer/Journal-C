//
//  EntryController.m
//  Journal-C
//
//  Created by Mitch Merrell on 8/19/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (EntryController *) shared {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (void) addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    Entry *newEntry = [[Entry alloc] initWithTitle:title bodyText:bodyText];
    [self.entries addObject:newEntry];
}

- (void) removeEntry:(Entry *)entry {
//    NSUInteger index = [self.entries indexOfObject:entry];
    [self.entries removeObject:entry];
}

- (void) updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText {
    entry.title = title;
    entry.bodyText = bodyText;
}

@end



