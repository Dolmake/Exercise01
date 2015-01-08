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
        DLMKJedi* quiGonJinn = [DLMKJedi jediWithName:@"Qui-Gon Jinn" midichlorians:1000 lightSaber:[DLMKLightSaber lightSaberGreen] padawanOf:yoda ];
        DLMKJedi* obiWan = [DLMKJedi jediWithName:@"Obi Wan Kenobi" midichlorians:1000 lightSaber:[DLMKLightSaber lightSaberGreen] padawanOf:quiGonJinn ];
        DLMKJedi* luke = [DLMKJedi jediWithName:@"Luke Skywalker"];
        DLMKJedi* lukeClone = [DLMKJedi jediWithName:@"Luke Skywalker"];
        
        NSLog(@"\n ******Jedi %@", yoda);
        NSLog(@"\n ******Jedi %@", quiGonJinn);
        NSLog(@"\n ******Jedi %@", obiWan);
        NSLog(@"\n ******Jedi %@", luke);
        
         NSLog(@"[luke isEqual: lukeClone] = %@", ([luke isEqual: lukeClone] ? @"YES" : @"NO"));
        
    }
    return 0;
}
