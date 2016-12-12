//
//  Person.h
//  LearnObjectiveC
//
//  Created by andrew ananta on 12/11/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <Foundation/Foundation.h>

//implement protocol NSCopying
@interface Person : NSObject<NSCopying>{
  //this is internal variable
  NSNumber *_numberOfArms;
}
-(Person *)initWithFirstNameAndLastName:(NSString *)firstName lastName:(NSString *)lastName;

@property NSString *firstName;
@property NSString *lastName;
@property NSNumber *countOfEatingFood;
@property (readonly) NSString *surname; //access directly is prohibited
@property (readonly) NSNumber *numberOfLife;

//method declaration
-(void)speak:(NSString*)greeting;
-(NSString *)fullname;
-(NSArray *)names;
-(void)eating;
-(void)decreaseCountOfEatingfood:(NSNumber *)decreasedFoodCount;
-(void)changeSurname:(NSString *)newSurname;
-(NSString *)getSurname;
-(void)changeNumberOfLife:(NSNumber *)newNumberOfLife;
-(NSNumber*)getNumberOfLife;
-(NSNumber*)getNumberOfArms;
//NOTE : id is equals to NSObject *
-(id)copyWithZone:(NSZone *)zone;
@end
