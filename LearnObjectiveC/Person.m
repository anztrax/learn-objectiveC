//
//  Person.m
//  LearnObjectiveC
//
//  Created by andrew ananta on 12/11/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "Person.h"

@implementation Person
//yeay we head on constructor
-(Person *)init{
  NSLog(@"cool, a new person is being initialized");
  //we set the internal variable
  _numberOfLife = @10;
  _surname = @"lucis";
  _numberOfArms = @2;
  
  return [super init];
}
-(Person *)initWithFirstNameAndLastName:(NSString *)firstName lastName:(NSString *)lastName{
  _firstName = firstName;
  _lastName = lastName;
  return [super init];
}

-(void)speak:(NSString *)greeting{
  NSLog(@"person with name %@ %@ says %@",_firstName,self.lastName,greeting);
}
-(NSString *)fullname{
  return [NSString stringWithFormat:@"%@ %@",self.firstName, self.lastName];
}
- (NSArray *)names{
  return @[self.firstName, self.lastName];
}
- (void)eating{
  NSLog(@"how many times do you eat ?, answer : %@ times",self.countOfEatingFood);
}
- (void)decreaseCountOfEatingfood:(NSNumber *)decreasedFoodCount{
  //boxed expression literal.
  self.countOfEatingFood =@([self.countOfEatingFood integerValue] - [decreasedFoodCount integerValue]);
}

- (void)changeSurname:(NSString *)newSurname{
  //note : underscore mean internal variable for property
  _surname = newSurname;
}
-(NSString *)getSurname{
  return _surname;
}
-(void)changeNumberOfLife:(NSNumber *)newNumberOfLife{
  _numberOfLife = @([_numberOfLife integerValue] + [newNumberOfLife integerValue]);
}
-(NSNumber *)getNumberOfLife{
  return _numberOfLife;
}
-(NSNumber *)getNumberOfArms{
  return _numberOfArms;
}
-(id)copyWithZone:(NSZone *)zone{
  /*NOTE : person can have first name and last name because of this init message
           can't hardcode class type at allocWithZone , example :
            [[Person allocWithZone:zone]initWithFirstNameAndLastName:_firstName lastName:_lastName];
  */
  id copyPerson = [[[self class] allocWithZone:zone]initWithFirstNameAndLastName:_firstName lastName:_lastName];
  [copyPerson changeSurname:@"mafioso"];
  return copyPerson;
}


@end
