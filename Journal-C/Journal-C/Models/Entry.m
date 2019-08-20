//
//  Entry.m
//  Journal-C
//
//  Created by Mitch Merrell on 8/19/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
