//
//  DLMKLightSaber.h
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface DLMKLightSaber : NSObject

#pragma mark - Class Methods

//Factory methods
+ (instancetype) lightSaberWithR:(CGFloat) r
                               G:(CGFloat) g
                               B:(CGFloat) b;

+ (instancetype) lightSaberBlue;

+ (instancetype) lightSaberGreen;

+ (instancetype) lightSaberRed;

+ (instancetype) lightSaberPurple;


#pragma mark - Properties
@property NSColor* color;

#pragma mark - Instance Methods

//Designated Initializer
- (instancetype) initWithR:(CGFloat) r
                         G:(CGFloat) g
                         B:(CGFloat) b;

//Convenience Initializers
- (instancetype) initWithBlue;

- (instancetype) initWithGreen;

- (instancetype) initWithRed;

- (instancetype) initWithPurple;

//Public interface
- (BOOL) isEqualToLightSaber:(DLMKLightSaber*) other;



@end
