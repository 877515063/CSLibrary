//
//  CSFile.m
//  CSLibrary
//
//  Created by dev4mobile on 2018/2/22.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "CSFile.h"

@implementation CSFile

+ (NSString *)fileHomeDir {
    return NSHomeDirectory();
}

+ (NSString *)fileResourceDir {
    return  [[NSBundle mainBundle] bundlePath];
}

+ (NSString *)fileDocDir {
    NSString *dirPath =  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return dirPath;
}

+ (NSString *)fileDocDir:(NSString *)path {
    NSString *docPath = [CSFile fileDocDir];
    NSString *dirPath = [docPath stringByAppendingPathComponent:path];
    return dirPath;
}

+ (BOOL)fileExistAtPath:(NSString *)path {
    return [[NSFileManager defaultManager] fileExistsAtPath:path];
}

+ (void)createDir:(NSString *)dirPath {
    NSError *error;
    BOOL success = [[NSFileManager defaultManager] createDirectoryAtPath:dirPath withIntermediateDirectories:YES attributes:nil error:&error];
    if (!success) {
        NSLog(@"createDirError = %@",error.localizedDescription);
    }
}

+ (BOOL)isCreateDir:(NSString *)dirPath {
    NSError *error;
    BOOL success = [[NSFileManager defaultManager] createDirectoryAtPath:dirPath
                                             withIntermediateDirectories:YES
                                                              attributes:nil
                                                                   error:&error];
    return  success;
//    if (!success) {
//        NSLog(@"isCreateDirError = %@",error.localizedDescription);
//        return NO;
//    }
//   return  YES;
}

+ (BOOL)fileWriteToFile:(NSString *)path data:(NSData *)data {
    //return [data writeToFile:path atomically:NO];
     return [[NSFileManager defaultManager] createFileAtPath:path contents:data attributes:nil];
}

/*
+ (void)fileWriteToFile:(NSString *)path data:(NSData *)data {
   BOOL success = [data writeToFile:path atomically:YES];
    if (!success) {
        NSLog(@"fileWriteToFileFail");
    }
}*/

+ (BOOL)fileDelete:(NSString *)path {
    NSError *error;
    return [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
}

+ (NSArray *)fileSubNames:(NSString *)path {
    NSError *error;
    return [[NSFileManager defaultManager] contentsOfDirectoryAtPath:path error:&error];
}

@end
