//
//  main.m
//  gambler
//
//  Created by Nikita HN LLP on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gamble.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int trial;
        int goal;
        int stake;
        gamble *g=[[gamble alloc]init];
        NSLog(@"enter no. of trials");
              scanf("%d",&trial);
        NSLog(@"enter no. of goal");
        scanf("%d",&goal);
        NSLog(@"entre no. of stake");
        scanf("%d",&stake);
        
        [g game:stake goalname:goal trialname:trial];
        
              
        
        
    }
    return 0;
}
