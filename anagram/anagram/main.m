//
//  main.m
//  anagram
//
//  Created by Kalitha H N on 13/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ana.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str1[10];
        char str2[10];
        int len1,len2;
        Anagram *a=[[Anagram alloc]init];
        NSLog(@"enter string 1");
        scanf("%s",str1);
        NSLog(@"enter string 2");
        scanf("%s",str2);
        
        //converting character array to string

            NSString *s = [NSString stringWithCString:str1 encoding:1];
        NSString *s1 = [NSString stringWithCString:str2 encoding:1];
        
        
         len1=[s length]; //finding length of string
        
         len2=[s1 length];
        
        [a anagrm:s string2:s1 length1:len1 length2:len2];//calling anagram function
        
        
    }
    return 0;
}
