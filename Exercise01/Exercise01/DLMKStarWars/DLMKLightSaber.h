//
//  DLMKLightSaber.h
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

@import Foundation;
@import AppKit;

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
- (id) initWithR:(CGFloat) r
                         G:(CGFloat) g
                         B:(CGFloat) b;

//Convenience Initializers
- (id) initWithBlue;

- (id) initWithGreen;

- (id) initWithRed;

- (id) initWithPurple;

//Public interface
- (BOOL) isEqualToLightSaber:(DLMKLightSaber*) other;



@end
