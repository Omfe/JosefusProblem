//
//  JPList.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/24/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPList.h"
#import "JPNode.h"

@implementation LLList

- (id)init
{
    self = [super init];
    if (self) {
        self.numberOfNodes = 0;
    }
    return self;
}

- (void)insertNodeWithValue:(NSString *)value
{
    JPNode *newNode;
    JPNode *currentNode;
    
    newNode = [[JPNode alloc] initWithValue:value];
    
    if (self.headNode == nil) {
        self.headNode = newNode;
    } else {
        currentNode = self.headNode;
        while (currentNode.nextNode ) {
            currentNode = currentNode.nextNode;
        }
        currentNode.nextNode = newNode;
    }
    newNode.nextNode = self.headNode;
    self.numberOfNodes++;
   // [self.delegate list:self didInsertNode:newNode];
}

- (void)deleteNodeAtIndex:(NSInteger)index
{
    JPNode *deleteNode;
    JPNode *currentNode;
    if (index != 0) {
        currentNode = [self findNodeAtIndex:index - 1];
        deleteNode = currentNode.nextNode;
        currentNode.nextNode = deleteNode.nextNode;
    } else {
        deleteNode = self.headNode;
        self.headNode = deleteNode.nextNode;
    }
    self.numberOfNodes--;
   // [self.delegate list:self didDeleteNode:deleteNode];
}

- (JPNode *)findNodeAtIndex:(NSInteger)index
{
    JPNode *currentNode;
    
    currentNode = self.headNode;
    for (NSInteger i = 0; i <= index ; i++) {
        if (i == index) {
            return currentNode;
        }
        currentNode = currentNode.nextNode;
    }
    return nil;
}

- (NSString *) iterateListString
{
    JPNode *currentNode;
    NSMutableString *iteratedListString;
    
    if (!self.headNode) {
        return  @"";
    }
    
    iteratedListString = [NSMutableString string];
    
    currentNode = self.headNode;
    [iteratedListString appendFormat:@"%@\n",currentNode.value];
    
    while (currentNode.nextNode) {
        currentNode = currentNode.nextNode;
        [iteratedListString appendFormat:@"%@\n",currentNode.value];
    }
    
    return iteratedListString;
}

@end