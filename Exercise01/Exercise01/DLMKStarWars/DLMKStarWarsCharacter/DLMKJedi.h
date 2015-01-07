//
//  DLMKJedi.h
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLMKStarWarsCharacter.h"
#import "DLMKLightSaber.h"

@interface DLMKJedi : DLMKStarWarsCharacter

#pragma mark - Class Methods
+ (instancetype) jediWithName: (NSString*) aName;
+ (instancetype) jediMasterWithName: (NSString*) aName;
+ (instancetype) jediMasterWithName: (NSString*) aName
                      midichlorians: (int) aMidichlorians
                         lightSaber: (DLMKLightSaber*) aLightSaber
                          padawanOf: (DLMKJedi*) aMaster;
+ (instancetype) jediMasterWithName: (NSString*) aName
                          padawanOf: (DLMKJedi*) aMaster;

#pragma mark - Properties
@property int midichlorians;
@property DLMKLightSaber* lightSaber;
@property DLMKJedi* padawanOf;

#pragma mark - Instance Methods

//Designated Initializer
- (instancetype) initWithName: (NSString*) aName
                midichlorians: (int) aMidichlorians
                   lightSaber: (DLMKLightSaber*) aLightSaber
                    padawanOf: (DLMKJedi*) aMaster;

//Convenience Initializers
- (instancetype) initWithName: (NSString*) aName;
- (instancetype) initJediMasterWithName: (NSString*) aName;
- (instancetype) initJediMasterWithName: (NSString*) aName
                          midichlorians: (int) aMidichlorians
                             lightSaber: (DLMKLightSaber*) aLightSaber
                              padawanOf: (DLMKJedi*) aMaster;
- (instancetype) initJediMasterWithName: (NSString*) aName
                             padawanOf : (DLMKJedi*) aMaster;

//Public interface
- (NSString*) unsheathe;
- (BOOL) isEqualToJedi:(DLMKJedi*)other;

@end
