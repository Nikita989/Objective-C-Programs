//
//  primefactor.m
//  Brute
//
//  Created by Nikita HN LLP on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "primefactor.h"

@implementation primefactor
-(void)prime:(int )n{
    int i;
    int j;
    //check the factors of number
    for (i=2; i<=n; i++) {
        if(n%i==0) {
            //check if it is prime
            for (j=2; j<=i/2;j++) {
                if (i%j==0)
                    break;
                j++;
            
            
            NSLog(@"prime factors are %d",i);
            }
        }
        
    }

}

@end
