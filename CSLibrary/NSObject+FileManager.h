//
//  NSObject+FileManager.h
//  CSLibrary
//
//  Created by dev4mobile on 2018/3/8.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (FileManager)

/**
 *  @brief   应用程序沙盒主目录
 *
 *  @return  主目录路径
 */
+ (NSString *)fileHomeDir;

/**
 *  @brief   应用程序资源目录
 *
 *  @return  资源目录路径
 */
+ (NSString *)fileResourceDir;

/**
 *  @brief  沙盒Document目录
 *
 *  @return  Document目录路径
 */
+ (NSString *)fileDocDir;

/**
 *  @brief  Document + path
 *
 *  @param  path   相对路径
 *
 *  @return  Document + path 完整路径
 */
+ (NSString *)fileDocDir:(NSString *)path;

/**
 *  @brief  目录或文件是否存在
 *
 *  @param  path 目录或文件路径
 *
 *  @return 目录或文件是否存在
 */
+ (BOOL)fileExistAtPath:(NSString *)path;

/**
 *  @brief  创建文件或目录
 *
 *  @param  dirPath   文件或目录路径
 */
+ (void)createDir:(NSString *)dirPath;

/**
 *  @brief  创建文件或目录
 *
 *  @param dirPath 目录或文件
 *
 *  @return  是否创建成功
 */
+ (BOOL)isCreateDir:(NSString *)dirPath;

/**
 *  @brief  保存data到path路径
 *
 *  @param  path 数据保存路径.
 *  @param  data 要保存的数据.
 */
+ (BOOL)fileWriteToFile:(NSString *)path data:(NSData *)data;

/**
 *  @brief  删除文件或目录
 *
 *  @param  path  文件或目录的路径
 *
 *  @return  删除文件或目录是否成功
 */
+ (BOOL)fileDelete:(NSString *)path;

/**
 *  @brief 获取子文件或文件夹名称
 *
 *  @param path  当前文件夹的路径
 *
 *  @return  子文件或文件夹名称
 */
+ (NSArray *)fileSubNames:(NSString *)path;

@end
