//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    
    NSArray *astarTrekArray = [characterString componentsSeparatedByString:@";"];
    
    return astarTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *astarTrekString = [characterArray componentsJoinedByString:@";"];
    return astarTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
 
    NSMutableArray *result = [characterArray mutableCopy];
    
    /*
    NSMutableArray *result = [[NSMutableArray alloc] initWithArray:characterArray];
     */
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
//    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *finalResult = [result sortedArrayUsingDescriptors:@[sortDescriptor]];
    return finalResult;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'WoRf'"];
    NSArray *newResult = [characterArray filteredArrayUsingPredicate:containsWorf];
    return YES == TRUE;
    return newResult.count != 0;
}

@end
