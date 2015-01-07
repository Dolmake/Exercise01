//
//  DLMKLightSaber.m
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKLightSaber.h"

@implementation DLMKLightSaber
#pragma mark - Class methods
+ (instancetype) lightSaberWithR:(CGFloat)r
                               G:(CGFloat)g
                               B:(CGFloat)b{
    return [[self alloc] initWithR:r
                                 G:g
                                 B:b];
}

+ (instancetype) lightSaberBlue{
    return [ [self alloc] initWithBlue];
}

+ (instancetype) lightSaberGreen{
    return [ [self alloc] initWithGreen];
}

+ (instancetype) lightSaberRed {
    return [[ self alloc] initWithRed];
}

+ (instancetype) lightSaberPurple{
    return [ [self alloc] initWithPurple];
}



#pragma mark - Instance methods
//Designated Initializer
- (instancetype) initWithR:(CGFloat)r
                         G:(CGFloat)g
                         B:(CGFloat)b{
    
    if ( self = [self init]){
        _color = [NSColor colorWithRed:r
                                 green:g
                                  blue:b
                                 alpha:1.0F ];
    }
    return self;
}

//Convenience Initializers
- (instancetype) initWithBlue{
    return [ self initWithR:0.0f G:0.0f B:0.95f ];
}

- (instancetype) initWithGreen{
    return [ self initWithR:0.0f G:0.95f B:0.0f];
}

- (instancetype) initWithRed{
    return [ self initWithR:0.95f G:0.0f B:0.0f];
}

- (instancetype) initWithPurple{
    return [self initWithR:0.95f G:0.0f B:0.95f];
}

//override
- (NSString*) description{
    return [NSString stringWithFormat:@"R=%f , G=%f, B=%f" ,
            [[self color] redComponent ],
            [[self color] greenComponent],
            [[self color] blueComponent]
            ];
}

- (BOOL) isEqual:(id)object{
    
    if (self == object) return YES;
    
    if ([object isKindOfClass:[self class]]){
        return [self isEqualToLightSaber:object];
    }
    else
        return NO;
}

- (BOOL) isEqualToLightSaber:(DLMKLightSaber *)other{
        
    return self.color.redComponent - other.color.redComponent < 0.001f &&
            self.color.greenComponent - other.color.greenComponent < 0.001f &&
            self.color.blueComponent - other.color.blueComponent < 0.001f &&
    self.color.alphaComponent - other.color.alphaComponent < 0.001f;
}


@end
