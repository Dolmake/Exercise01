//
//  DLMKJedi.m
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKJedi.h"
#import "../DLMKLightSaber.h"

@implementation DLMKJedi

#pragma mark - Class Methods
+ (instancetype) jediWithName: (NSString*) aName{
    return [[self alloc] initWithName:aName];
}
+ (instancetype) jediMasterWithName: (NSString*) aName{
    return [[self alloc] initWithJediMasterNamed:aName];
}
+ (instancetype) jediWithName: (NSString*) aName
                      midichlorians: (int) aMidichlorians
                         lightSaber: (DLMKLightSaber*) aLightSaber
                          padawanOf: (DLMKJedi*) aMaster{
    return [[self alloc] initWithName:aName midichlorians:aMidichlorians lightSaber:aLightSaber padawanOf:aMaster];
}



#pragma mark - Instance Methods

//Designated Initializer
- (instancetype) initWithName: (NSString*) aName
                midichlorians: (int) aMidichlorians
                   lightSaber: (DLMKLightSaber*) aLightSaber
                    padawanOf: (DLMKJedi*) aPadawanOf{
    if ( self = [super initWithName:aName]){
        _midichlorians = aMidichlorians;
        _lightSaber = aLightSaber;
        _padawanOf = aPadawanOf;
    }
    return self;
}

//Convenience Initializers
- (instancetype) initWithJediMasterNamed: (NSString*) aName{
    return [self initWithName:aName
                midichlorians:1000
                   lightSaber:[DLMKLightSaber lightSaberGreen]
                    padawanOf:nil];
}

- (instancetype) initWithName: (NSString*) aName{
    return [self initWithName:aName
                midichlorians:100
                   lightSaber:[DLMKLightSaber lightSaberBlue]
                    padawanOf:nil];
    
}

//Public interface
- (NSString*) unsheathe{
    return @"█||||||(•)█Ξ█████████████████████";
}
- (BOOL) isEqualToJedi:(DLMKJedi *)other{
    return [self.name isEqualToString:other.name] &&
        self.midichlorians == other.midichlorians &&
        [self.lightSaber isEqual:other.lightSaber ] &&
        [self hasSameMaster:other];
}

//override
- (BOOL) isEqual:(id)object{
    if (self == object) return YES;
    
    if ([object isKindOfClass:self.class]){
        return [self isEqualToJedi:object];
    }
    else return NO;
}

- (NSString*) description{
    return [NSString stringWithFormat:@"Name: %@,\n mid=%d, \n master=%@, \n saber=%@",
            self.name, self.midichlorians, self.padawanOf.name, self.lightSaber.description ];
}

//MISC
- (BOOL) hasSameMaster:(DLMKJedi*) other{
    if (self.padawanOf == other.padawanOf) return YES;
    if ([self.padawanOf isEqualToJedi:other.padawanOf]) return YES;
    return NO;
}




@end
