//
//  Pizza.h
//  NewPizzaRestaurant
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

typedef NS_ENUM(NSUInteger, PizzaSize){
    small,
    medium,
    large,
    
};

#import <Foundation/Foundation.h>

@interface Pizza : NSObject
@property (nonatomic, assign, readonly) PizzaSize pizzaSize;
@property (nonatomic, strong, readonly) NSArray* pizzaToppings;

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize topping: (NSArray*)pizzaTopping;

+(Pizza *) largePepperoni;

//+(Pizza *) meatLoversWithSize:(PizzaSize)size;


@end

