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

@property int midichlorians;
@property DLMKLightSaber* lightSaber;
@property DLMKJedi* padawanOf;

@end
