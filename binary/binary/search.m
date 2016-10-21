//
//  search.m
//  binary
//
//  Created by Nikita HN LLP on 15/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "search.h"

@implementation search

-(void) binsearch:(int)N steps:(int)n
{
    NSLog(@"Imagine the number between 1 to %d",N);
    int first = 1;
    int last = N/2; //find the middle element
    int i=2,j=4,value;

    for(int k=1;k<n;k++){
        NSLog(@"Is Your number Present Between %d  to %d ??\ntrue(1) or false(0)",first,last);
        scanf("%d",&value);
        if(value==1){
            N=N/2;
            last = last-((last-first+1)/2);
            
        }
        else{
            first = first+N/i;
            last = last+N/j;
            i = i+i;
            j = j+j;
        }
    }
    NSLog(@"Is Your number %d  \ntrue or false",first);
    scanf("%d",&value);
    if(value==1)
        NSLog(@"Your number is %d ",first);
    else
        NSLog(@"Your number is %d",(last+1));
}

    


@end
