//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *sentence = @"My favorite cheese is ";
    NSString *fullSentence = [NSString stringWithFormat:@"%@%@.",sentence, cheeseName];
    return fullSentence;

}
/*
- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *sentenceToCut = @"Monterey Jack cheese";
    NSString *nowySring = [sentenceToCut stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
    return nowySring;
}
 */
/*
- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSString *nowySring = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
    nowySring = [cheeseName stringByReplacingOccurrencesOfString:@" Cheese" withString:@""];
    return nowySring;
}
 */
- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {

    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *result = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return result;
};

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
   if(cheeseCount == 1)
   {
       return [NSString stringWithFormat:@"%d cheese", cheeseCount];
               }else{
                   return [NSString stringWithFormat:@"%d cheeses",cheeseCount];
               }
}


@end
