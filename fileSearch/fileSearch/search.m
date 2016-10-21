//
//  search.m
//  fileSearch
//
//  Created by Nikita HN LLP on 15/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "search.h"

@implementation search

-(void)wordsearch:(NSMutableArray*)array
{
    int flag=0;
    //sorting the array
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES];
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:@[sort]];

    
    char word[20];
    
    NSLog(@"enter the word to search");
    scanf("%s",word);
    NSString *s=[NSString stringWithCString:word encoding:1];
    // searching the given word 
    for (int i=0; i<[sortedArray count]; i++) {
       if ([[array objectAtIndex:i] isEqualToString:s])
       {
         
        flag=1;
        break;
       }
    }
    if(flag==1)
      NSLog(@" found");
    else
    NSLog(@" not found");

    
    
}
@end
