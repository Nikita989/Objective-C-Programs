//
//  main.m
//  LinkedList
//
//  Created by Nikita HN LLP on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char word[20];
        int value;
        
        LinkedList *obj=[[LinkedList alloc]init];
       
        NSString* path = @"/Users/bridgeit/Desktop/mac/unorderedList/LinkedList/file.txt";
        // reading contents of file
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        for (int i=0; i<[allLinedStrings count]; i++) {
         NSString *key = [allLinedStrings objectAtIndex:i];
            [obj add:key];
        }
        
        
        

        
        NSLog(@"Enter the element to be searched ");
        scanf("%s",word);
        NSString *name=[NSString stringWithCString:word encoding:1];
        value = [obj search:name];
        if (value==1) {
            //if the word exists,remove it form the file
            [obj remove:name];
            
        }
        else {
               //if the word does not exist,add it to the file
            [obj add:name];
            }
        
        [obj display];

    }
    return 0;
}
