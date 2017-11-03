//
//  Pizza.m
//  NewPizzaRestaurant
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize topping: (NSArray*)pizzaTopping
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _pizzaToppings = pizzaTopping;
    }
    return self;
}

+(Pizza *) largePepperoni{
    NSArray *pepperoniArray = @[@"pepperoni"];
    Pizza * pizza = [[Pizza alloc]initWithPizzaSize:large topping:pepperoniArray];
    return pizza;
}



@end

