//
//  CCFactory.h
//  Pirate Adventure
//
//  Created by Mohit Jain on 30/08/14.
//  Copyright (c) 2014 CodeBeerStartups. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"


@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;


@end
