#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableArray *resultChars = [[NSMutableArray alloc] initWithCapacity:[string1 length] + [string2 length]];
    
    NSMutableArray *firstChars = [[NSMutableArray alloc] initWithCapacity:[string1 length]];
    NSMutableArray *secondChars = [[NSMutableArray alloc] initWithCapacity:[string2 length]];

    int maxCount = [string1 length] > [string2 length] ? [string1 length] : [string2 length];
    
    for (int i=0; i < maxCount; i++) {
        if (i < [string1 length]) {
            NSString *ichar  = [NSString stringWithFormat:@"%c", [string1 characterAtIndex:i]];
            [resultChars addObject: ichar];
        }
        
        if (i < [string2 length]) {
            NSString *ichar  = [NSString stringWithFormat:@"%c", [string2 characterAtIndex:i]];
            [resultChars addObject: ichar];
        }
    }
    
    NSMutableString *resultString = [NSMutableString stringWithCapacity:[string1 length] + [string2 length]];
    for(id resutlString in resultChars) {
        [resultString appendString: resutlString];
    }
    return  [NSString stringWithString:resultString];
}

@end
