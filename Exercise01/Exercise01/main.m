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
        
    }
    return 0;
}
