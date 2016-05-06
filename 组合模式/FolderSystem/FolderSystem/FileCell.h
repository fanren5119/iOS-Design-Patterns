//
//  FileCell.h
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class File;

@interface FileCell : UITableViewCell

- (void)resetCellWithEntity:(File *)file;

@end
