//
//  DLMKJedi.m
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import "DLMKJedi.h"

@implementation DLMKJedi

#pragma mark - Class Methods
+ (instancetype) jediWithName: (NSString*) aName{
    return [[self alloc] initWithName:aName];
}
+ (instancetype) jediMasterWithName: (NSString*) aName{
    return [[self alloc] initJediMasterWithName:aName];
}
+ (instancetype) jediMasterWithName: (NSString*) aName
                      midichlorians: (int) aMidichlorians
                         lightSaber: (DLMKLightSaber*) aLightSaber
                          padawanOf: (DLMKJedi*) aMaster{
    return [[self alloc] initJediMasterWithName:aName
                                  midichlorians: aMidichlorians
                                     lightSaber:aLightSaber
                                      padawanOf:aMaster];
}
+ (instancetype) jediMasterWithName: (NSString*) aName
                          padawanOf: (DLMKJedi*) aMaster{
    return [[self alloc] initJediMasterWithName:aName
                                      padawanOf:aMaster];
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
- (instancetype) initWithName: (NSString*) aName{
    return [ self initWithName:aName
                 midichlorians:100
                    lightSaber: [DLMKLightSaber lightSaberBlue]
                     padawanOf: nil];
}

- (instancetype) initJediMasterWithName: (NSString*) aName{
    return [self initJediMasterWithName:aName
                          midichlorians:1000
                             lightSaber: [DLMKLightSaber lightSaberGreen]
                              padawanOf:nil];
}
- (instancetype) initJediMasterWithName: (NSString*) aName
                          midichlorians: (int) aMidichlorians
                             lightSaber: (DLMKLightSaber*) aLightSaber
                              padawanOf: (DLMKJedi*) aMaster{
    return [self initWithName:aName
                midichlorians:aMidichlorians
                   lightSaber:aLightSaber
                    padawanOf:aMaster];
}
- (instancetype) initJediMasterWithName: (NSString*) aName
                                padawanOf : (DLMKJedi*) aMaster{
        return [self initJediMasterWithName: aName
                              midichlorians: 1000
                                 lightSaber: [DLMKLightSaber lightSaberGreen]
                                  padawanOf:aMaster];
    
}


//Public interface
- (NSString*) unsheathe{
    return @"█||||||(•)█Ξ█████████████████████";
}
- (BOOL) isEqualToJedi:(DLMKJedi *)other{
    return self.name == other.name &&
        self.midichlorians == other.midichlorians &&
        [self.lightSaber isEqual:other.lightSaber ] &&
    [self.padawanOf isEqual:other.padawanOf];
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
    return [NSString stringWithFormat:@"Jedi: %@, mid=%d, master=%@, saber=%@",
            self.name, self.midichlorians, self.padawanOf.name, self.lightSaber.description ];
}




@end
