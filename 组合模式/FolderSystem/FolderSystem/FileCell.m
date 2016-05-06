//
//  FileCell.m
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "FileCell.h"
#import "File.h"

@implementation FileCell

- (void)resetCellWithEntity:(File *)file
{
    self.detailTextLabel.text = file.fileName;
    self.textLabel.font = [UIFont systemFontOfSize:20.f];
    self.detailTextLabel.font = [UIFont systemFontOfSize:18.f];
    switch (file.type) {
        case kFile:
        {
            self.textLabel.text = @"文件";
            self.textLabel.textColor = [UIColor grayColor];
            self.detailTextLabel.textColor = [UIColor grayColor];
        }
            break;
        case kFolder:
        {
            self.textLabel.text = @"文件夹";
            self.textLabel.textColor = [UIColor blackColor];
            self.detailTextLabel.textColor = [UIColor blackColor];
        }
            break;
        default:
            break;
    }
}

@end
