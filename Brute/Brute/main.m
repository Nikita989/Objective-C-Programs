//
//  main.m
//  Brute
//
//  Created by Nikita HN LLP on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "primefactor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n;
        primefactor *p=[[primefactor alloc]init];
        NSLog(@"enter n");
        scanf("%d",&n);
        [p prime:n]; //call prime function
            }
    return 0;
}
