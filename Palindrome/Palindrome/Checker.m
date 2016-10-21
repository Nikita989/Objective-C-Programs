//
//  Checker.m
//  Palindrome
//
//  Created by Nikita HN LLP on 21/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Checker.h"

@implementation Checker
@synthesize head;

-(void)addRear:(char)data
{
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

-(void)addFront:(char)data
{
     Node *newNode =[[Node alloc] initNodeWithValue:data];
    
    if (head==nil) {
        
        head=newNode;
    }
    
    else
    {
        Node *temp=head;
        head=newNode;
        head.next=temp;
    }
    
}
-(char)remove
{
    Node *temp=head;
    if (head.next != nil)
    {
        Node *temp1=head.next;
        head=nil;
        head= temp1;
    }
    else{
        head = nil;
    }
    return temp.data;
    

}

-(void)display
{
    Node *currentNode = head;
    while (currentNode != nil)
    {
        char k = currentNode.data;
        NSLog(@"%c",k);
        currentNode = currentNode.next;
    }
    //NSLog(@"%@",currentNode.data);
    
}
@end
