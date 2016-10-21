//
//  LinkedList.m
//  LinkedList
//
//  Created by Nikita HN LLP on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "LinkedList.h"
@implementation LinkedList

@synthesize head;

//function to add the word to the list
-(void)add:(NSString*)data{
    Node *newNode =[[Node alloc] initNodeWithValue:data];
    if(head == nil){
        head=newNode;
    }
    else{
        Node  *lastNode=head;
        
        while (lastNode.next!=nil) {
            lastNode=lastNode.next;
        }
        lastNode.next = newNode;
    }
}

-(void)display{
    Node  *lastNode=head;
    
    while (lastNode!=nil) {
        NSLog(@"%@",lastNode.data);
         [self writeToLogFile:lastNode.data];
        lastNode=lastNode.next;
        
    }
   
    
}

-(void)remove:(NSString*)word
{
    Node *currentNode = head.next;
   Node *previousNode = head;
if (head.data == word) {
    head = head.next;
}
else{
    while (currentNode.next != nil){
        if (currentNode.data == word) {
            previousNode.next = currentNode.next;
            break;
        }
        else{
            previousNode = currentNode;
            currentNode = currentNode.next;
        }
    }
    if (currentNode.data == word && currentNode.next == nil) {
        previousNode.next = nil;
    }
}
}
//function to search the required word
-(int)search:(NSString*)word
{
    Node *currentNode = head;
    while (currentNode.next != nil) {
    if (currentNode.data == word) {
        return 1;
    }
    currentNode = currentNode.next;
}
if (currentNode.data == word){
    return 1;
}
    return 0;

}

//updating the contents of file
-(void) writeToLogFile:(NSString*)content{
    NSString *content2 = [NSString stringWithFormat:@"%@\n",content];
    
     NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/bridgeit/Desktop/mac/unorderedList/LinkedList/file.txt"];
    
    if (content == head.data){
        [content2 writeToFile:@"/Users/bridgeit/Desktop/mac/unorderedList/LinkedList/file.txt"
                  atomically:YES
                    encoding:NSStringEncodingConversionAllowLossy
                       error:nil];
    }
    else if (fileHandle){
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[content2 dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
    }
    
   }














@end
