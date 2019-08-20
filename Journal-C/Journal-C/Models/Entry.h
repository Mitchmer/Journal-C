//
//  Entry.h
//  Journal-C
//
//  Created by Mitch Merrell on 8/19/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *bodyText;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
