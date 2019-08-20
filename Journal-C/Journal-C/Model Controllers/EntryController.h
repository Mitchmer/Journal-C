//
//  EntryController.h
//  Journal-C
//
//  Created by Mitch Merrell on 8/19/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

// SoT / Shared Instance

@interface EntryController : NSObject

+ (EntryController *)shared;
@property (nonatomic, strong) NSMutableArray *entries;

// CRUDaddentry(title:

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)removeEntry:(Entry *)entry;
- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
