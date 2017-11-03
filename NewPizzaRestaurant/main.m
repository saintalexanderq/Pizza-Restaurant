//
//  main.m
//  NewPizzaRestaurant
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            //           - (Pizza *)makePizzaWithSize:(pizzaSize)size toppings:(NSArray *)toppings;
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSRange toppingsRange = NSMakeRange(1, ([commandWords count]-1));
            NSArray * pizzaToppings = [commandWords subarrayWithRange:toppingsRange];
            
            
            PizzaSize pizzaSize = [Kitchen PizzaSizeFrom:commandWords[0]];
            Pizza *pizza;
            
            if ([[commandWords[0] lowercaseString] hasPrefix:@"pepperoni"]) {
                pizza = [kitchen makeLargePepperoniPizza];
            }
            else{
                pizza = [kitchen makePizzaWithSize: pizzaSize toppings:pizzaToppings];
            }
            NSString *toppingString = [pizza.pizzaToppings componentsJoinedByString:@", " ];
            NSString *sizeString = [Kitchen sizeStringFromPizzaSize:pizza.pizzaSize];
            NSLog(@"You ordered a pizza of size %@, with toppings %@", sizeString, toppingString);
            
        }
        
    }
    return 0;
}


