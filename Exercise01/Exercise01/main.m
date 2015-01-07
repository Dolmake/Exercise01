//
//  main.m
//  Exercise01
//
//  Created by Daniel on 07/01/15.
//  Copyright (c) 2015 Dolmake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLMKStarWars/DLMKLightSaber.h"
#import "DLMKStarWars/DLMKStarWarsCharacter.h"
#import "DLMKStarWars/DLMKStarWarsCharacter/DLMKJedi.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        DLMKLightSaber* blueSaber =[DLMKLightSaber lightSaberBlue];
        DLMKLightSaber* redSaber = [DLMKLightSaber lightSaberRed];
        DLMKLightSaber* blueSaber2 = [DLMKLightSaber lightSaberBlue];
        DLMKLightSaber* blueSaber3 = blueSaber;

        
        //NSLog(@"Light saber created : %@", blueSaber);
        NSLog(@"[blueSaber isEqual: redSaber] = %@", ([blueSaber isEqual:redSaber] ? @"YES" : @"NO"));
        NSLog(@"[blueSaber isEqual: blueSaber2] = %@", ([blueSaber isEqual:blueSaber2] ? @"YES" : @"NO"));
        NSLog(@"[blueSaber isEqual: blueSaber3] = %@", ([blueSaber isEqual:blueSaber3] ? @"YES" : @"NO"));
        
        DLMKStarWarsCharacter* hanSolo = [DLMKStarWarsCharacter starWarsCharacterWithName:@"Han Solo" ];
        DLMKStarWarsCharacter* jabba = [DLMKStarWarsCharacter starWarsCharacterWithName:@"Jabba the Hutt"];
        DLMKStarWarsCharacter* hanSoloClone = [DLMKStarWarsCharacter starWarsCharacterWithName:@"Han Solo"];
        
        
        NSLog(@"[hanSolo isEqual: jabba] = %@", ([hanSolo isEqual: jabba] ? @"YES" : @"NO"));
        NSLog(@"[hanSolo isEqual: hanSoloClone] = %@", ([hanSolo isEqual: hanSoloClone] ? @"YES" : @"NO"));
        
        //Qui-Gon Jinn, Obi Wan Kenobi, Yoda y Luke Skywalker
        DLMKJedi* yoda = [DLMKJedi jediMasterWithName:@"Yoda"];
        DLMKJedi* quiGonJinn = [DLMKJedi jediMasterWithName:@"Qui-Gon Jinn" padawanOf:yoda  ];
        DLMKJedi* obiWan = [DLMKJedi jediMasterWithName:@"Obi Wan Kenobi" padawanOf:quiGonJinn];
        DLMKJedi* luke = [DLMKJedi jediWithName:@"Luke Skywalker"];
        
        NSLog(@"Jedi %@", yoda);
        NSLog(@"Jedi %@", quiGonJinn);
        NSLog(@"Jedi %@", obiWan);
        NSLog(@"Jedi %@", luke);
        
    }
    return 0;
}
