//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    if (dollars < 5) {
        itemToReturn =@"get out of my store";
    }else if (dollars >= 5 && dollars < 6) {
        itemToReturn =@"have some gum";
    }else if (dollars >= 6 && dollars < 1000){
        itemToReturn =@"have an apple";
    }else if (dollars >= 1000 && dollars < 1000000){
        itemToReturn =@"have an Apple computer";
    }else if (dollars >= 1000000){
        itemToReturn =@"have The Big Apple";
    }
    
    
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
 
   
    NSUInteger cost = 24;
    
    if (self.getsDiscount) {
        cost *= .75;
    }
    NSLog(@"Discounted vodka should be %d.", cost);
    return cost;
    
}

@end
