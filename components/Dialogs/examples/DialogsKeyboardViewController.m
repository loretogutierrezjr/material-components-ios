/*
 Copyright 2016-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "MaterialDialogs.h"
#import "supplemental/DialogsKeyboardViewControllerSupplemental.h"

@implementation DialogsKeyboardViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self loadCollectionView];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  [super collectionView:collectionView didSelectItemAtIndexPath:indexPath];

  // If you are using this code outside of the MDCCatalog in your own app, your bundle may be nil.
  NSBundle *bundle = [NSBundle bundleForClass:[DialogsKeyboardViewController class]];
  UIStoryboard *storyboard =
      [UIStoryboard storyboardWithName:@"DialogWithInputField" bundle:bundle];
  NSString *identifier = @"DialogID";

  UIViewController *viewController =
      [storyboard instantiateViewControllerWithIdentifier:identifier];
  viewController.mdm_transitionController.transition = [[MDCDialogTransition alloc] init];

  [self presentViewController:viewController animated:YES completion:NULL];
}

@end
