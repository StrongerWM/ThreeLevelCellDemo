//
//  DemoCell.m
//  MultiGroupDemo
//
//  Created by Stronger_WM on 16/5/28.
//  Copyright © 2016年 Stronger_WM. All rights reserved.
//

#import "DemoCell.h"


@implementation DemoCell

- (void)updateCellWithModel:(DemoModel *)model
{
    //如果是一级cell
    if (model.second_index == 0 && model.third_index == 0) {
        self.textLabel.text = [NSString stringWithFormat:@"%ld.%ld.%ld",model.first_index,model.second_index,model.third_index];
        return;
    }
    
    //如果是二级cell
    if (model.third_index == 0) {
        self.textLabel.text = [NSString stringWithFormat:@"     %ld.%ld.%ld",model.first_index,model.second_index,model.third_index];
        return;
    }
    
    //如果是三级cell
    self.textLabel.text = [NSString stringWithFormat:@"         %ld.%ld.%ld",model.first_index,model.second_index,model.third_index];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
