//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    [self setArray:arrayToRemember];
    //NSMutableArray *array = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToRemember {
    [self setArrayToCopy:arrayToRemember];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    [self setSomeFloat:floatToRemember];
}

- (NSMutableArray *) arrayYouShouldRemember {
    return [self array];
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [self arrayToCopy];
    
}

- (CGFloat) floatYouShouldRemember {
    return [self someFloat];
    
}

@end