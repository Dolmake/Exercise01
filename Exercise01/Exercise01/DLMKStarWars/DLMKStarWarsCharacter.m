//
//  DLMKStarWarsCharacter.m
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKStarWarsCharacter.h"

@implementation DLMKStarWarsCharacter

#pragma mark - Class Methods

+ (instancetype) starWarsCharacterWithName: (NSString*)name{
    return [[self alloc] initWithName:name];
}

#pragma mark - Instance Methods

//Desginated Initializer
- (instancetype) initWithName: (NSString*) name{
    if (self = [super init])
    {
        _name = name;
    }
    return self;
}

//override
- (NSString*) description{
    return [self name];
}

- (BOOL) isEqual:(id)object{
    if (self == object) return YES;
    
    if ([object isKindOfClass:[self class]]){
        return [self isEqualToStarWarsCharacter: object];
    
    }
    else
        return NO;
}

- (BOOL) isEqualToStarWarsCharacter: (DLMKStarWarsCharacter*) other{
    return [self.name isEqualToString:other.name];
}



@end
