//
//  DLMKStarWarsCharacter.h
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLMKStarWarsCharacter : NSObject

#pragma mark - Class Methods

+ (instancetype) starWarsCharacterWithName: (NSString*)name;

#pragma mark - Properties
@property NSString* name;

#pragma mark - Instance Methods

//Desginated Initializer
- (instancetype) initWithName: (NSString*) name;

- (BOOL) isEqualToStarWarsCharacter: (DLMKStarWarsCharacter*) other;

@end
