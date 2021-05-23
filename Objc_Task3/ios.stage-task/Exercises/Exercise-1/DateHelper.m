#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if(monthNumber == 1) {
        return @"January";
    } else if(monthNumber == 2) {
        return @"February";
    } else if(monthNumber == 3) {
        return @"March";
    } else if(monthNumber == 4) {
        return @"April";
    } else if(monthNumber == 5) {
        return @"May";
    } else if(monthNumber == 6) {
        return @"June";
    } else if(monthNumber == 7) {
        return @"Jule";
    } else if(monthNumber == 8) {
        return @"August";
    } else if(monthNumber == 9) {
        return @"September";
    } else if(monthNumber == 10) {
        return @"October";
    } else if(monthNumber == 11) {
        return @"November";
    } else if(monthNumber == 12) {
        return @"December";
    }
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    NSDate *dateFromString = [formatter dateFromString:date];
    NSDateFormatter *dayFormatter = [[NSDateFormatter alloc] init];
    dayFormatter.dateFormat = @"dd";
    return [dayFormatter stringFromDate: dateFromString].intValue;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ru_RU"];
    formatter.dateFormat = @"EEEEEE";
    return [formatter stringFromDate: date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *todaysComponents = [gregorian components:NSCalendarUnitWeekOfYear fromDate:[NSDate date]];
    NSUInteger todaysWeek = [todaysComponents weekOfYear];
    NSDateComponents *otherComponents = [gregorian components:NSCalendarUnitWeekOfYear fromDate:date];
    NSUInteger datesWeek = [otherComponents weekOfYear];
    return (todaysWeek==datesWeek);
}

@end
