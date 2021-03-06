//
//      Copyright (c) 2014 Oded Klein. All rights reserved.
//
//      Permission is hereby granted, free of charge, to any person obtaining a copy
//      of this software and associated documentation files (the "Software"), to deal
//      in the Software without restriction, including without limitation the rights
//      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//      copies of the Software, and to permit persons to whom the Software is
//      furnished to do so, subject to the following conditions:
//
//      The above copyright notice and this permission notice shall be included in all
//      copies or substantial portions of the Software.
//
//      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//      SOFTWARE.

#import "EbayCategory.h"
#import "EbayModel.h"

@implementation EbayCategory

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super init];
    BOOL infoExists = IKNotNull(info);
    
    if (self && infoExists)
    {
        _categoryId = [info[kCategoryId] objectAtIndex:0];
        _categoryName = [info[kCategoryName] objectAtIndex:0];
        return self;
    }
    return nil;
}

- (id)initWithCategoryInfo:(NSDictionary *)info
{
    self = [super init];
    BOOL infoExists = IKNotNull(info);
    
    if (self && infoExists)
    {
        _categoryId = info[kEbayCategoryID];
        _categoryName = info[kEbayCategoryName];
        _categoryIdPath = info[kEbayCategoryIDPath];
        _categoryNamePath = info[kEbayCategoryNamePath];
        _categoryLevel = [info[kEbayCategoryLevel] intValue];
        _categoryParentId = info[kEbayCategoryParentID];
        _isLeaf = [info[kEbayLeafCategory] boolValue];
        return self;
    }
    return nil;
}

@end
