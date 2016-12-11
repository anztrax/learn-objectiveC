//
//  main.m
//  LearnObjectiveC
//
//  Created by andrew ananta on 12/9/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  _Bool b = 10;
  // insert code here...
  NSString *firstName = @"Hello, Mr Higgie";
  NSString *lastName = @"Hello, Gondo";
  NSString *myName = @"Andrew ananta gondo";
  NSNumber *age = @25;
  NSArray *games = @[@"Final Fantasy xv",@"Last remnant",@"Uncharted"];
  NSDictionary *gamesRating = @{@"Final Fantasy xv" : @5, @"Last remnant" : @5, @"Uncharted":@5};

  NSLog(@"Hello There %@.",firstName);
  NSLog(@" %@ # %@ ",firstName,lastName);
  NSLog(@"name : %@, age : %@\n",myName,age);
  NSLog(@"List of games : %@, the best story telling game is : %@ and the rating : %@",games, games[2],gamesRating[@"Final Fantasy xv"]);
  games = @[@"Final Fantasy xv",@"Last remnant",@"Uncharted", @"Final Fantasy XIII - x2"];

  //send a message : [objectName messageName]
  NSString *gamesRatingDescription = [gamesRating description];
  NSUInteger myNameLength = [myName length];
  NSLog(@"My name length : %lu characters",myNameLength);
  NSLog(@"Games Rating description : %@", gamesRatingDescription);

  NSNumber *higgiesAge = @6;
  NSNumber *phoneLives = @3;
  NSUInteger higgiesAgeInt = [higgiesAge unsignedIntegerValue];
  NSUInteger phoneLivesInt = [phoneLives unsignedIntegerValue];
  NSUInteger higgiesRealAge = higgiesAgeInt * phoneLivesInt;
  NSLog(@"Higgies is actually %lu years old",higgiesRealAge);

  NSString *myFullname = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];
  //message with 2 arguments
  NSString *replacedText = [myFullname stringByReplacingOccurrencesOfString:@"Hello" withString:@""];
  NSLog(@"my fullname : %@, and after replaced : %@",myFullname,replacedText);
  //cast string to NSString

  NSString *copiedString = [NSString stringWithString:replacedText];
  copiedString = [copiedString stringByReplacingOccurrencesOfString:@", Mr Higgie ," withString:@"andrew ananta"];
  NSLog(@"NSString : %@",copiedString);

  NSArray *emptyArray = [NSArray array];  //creating empty array
  NSDictionary *emptyDictionary = [NSDictionary dictionary]; //empty dictionary
  NSString *emptyString2 = [[NSString alloc] init]; //common way to allocate all types object
  NSString *emptyString3 = [[NSString alloc] initWithString:emptyString2];
  NSString *StringWithFormat = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
  NSLog(@"empty String : (emptyString2) %@ # (emptyString3) %@",emptyString2, emptyString3);
  NSLog(@"string with format : %@",StringWithFormat);
  
  BOOL mrHiggieIsMean = NO;
  if(mrHiggieIsMean){
    NSLog(@"Confirmed : he is super man");
  }else{
    NSLog(@"No , Actually he's really nice");
  }
  
  NSNumber *dummyScale = @10;
  if([dummyScale intValue] < 4){
    NSLog(@"dummy scale is less than 4");
  }else if([dummyScale intValue] > 4 && [dummyScale intValue]< 8){
    NSLog(@"dummy scale is greater than 4 and less than 8");
  }else{
    NSLog(@"dummy scale is greather than 8");
  }
  
  NSString *mrHiggieCurrentHat = @"Sombrero";
  if([mrHiggieCurrentHat isEqualToString:@"Sombrero"]){
    NSLog(@"mr higgie current hat is sombrero");
  }else if([mrHiggieCurrentHat isEqualToString:@"Fedora"]){
    NSLog(@"mr higgie current hat is fedora");
  }else{
    NSLog(@"mr higgie current hat is undefined");
  }
  
  NSLocale *currentLocale = [NSLocale currentLocale];
  NSString *currentDay = [[NSDate date] descriptionWithLocale:currentLocale];
  NSLog(@"testing : %@",currentDay);
  
  //NOTE :  switch really shines is when it’s used in conjunction with an enum
  NSInteger dayNumber = 7;
  switch (dayNumber) {
    case 1:
    case 2:
    case 3:
    case 4:
      NSLog(@"Just a boring normal day :(");
      break;
    case 5:
      NSLog(@"TGIF yeay :D");
      break;
    case 6:
    case 7:
      NSLog(@"Weekend yeay :D");
      break;
    default:
      NSLog(@"i don't know what kind of day it is");
      break;
  }
  
  return 0;
}
