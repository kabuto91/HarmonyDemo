/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Common constants for all features.
 */
export default class CommonConstants {
  /**
   * The main ability tag.
   */
  static readonly TAG_ABILITY: string = 'EntryAbility';

  /**
   * The login page tag.
   */
  static readonly TAG_LOGIN_PAGE: string = 'LoginPage';

  /**
   * The main page tag.
   */
  static readonly TAG_MAIN_PAGE: string = 'MainPage';

  /**
   * The common utils tag.
   */
  static readonly TAG_COMMON_UTILS: string = 'CommonUtils';

  /**
   * The mine page list item cell tag.
   */
  static readonly TAG_LIST_ITEM: string = 'ListItem';

  /**
   * The mine page tag.
   */
  static readonly TAG_MINE_PAGE: string = 'MinePage';

  /**
   * Login text.
   */
  static readonly LOGIN_TEXT: string = 'login';

  /**
   * Toast duration.
   */
  static readonly TOAST_DURATION: number = 3000;

  /**
   * Home tab index.
   */
  static readonly HOME_TAB_INDEX: number = 0;

  /**
   * Mine tab index.
   */
  static readonly MINE_TAB_INDEX: number = 1;
  static readonly TEST_TAB_INDEX: number = 2;

  /**
   * Swiper cache count of the number 3.
   */
  static readonly SWIPER_CACHE_COUNT: number = 3;

  /**
   * Main page url.
   */
  static readonly MAIN_PAGE_URL: string = 'pages/MainPage';

  /**
   * Login page url.
   */
  static readonly LOGIN_PAGE_URL: string = 'pages/LoginPage';

  /**
   * Break point sm of the tag.
   */
  static readonly SM: string = 'sm';

  /**
   * Break point md of the tag.
   */
  static readonly MD: string = 'md';

  /**
   * Break point lg of the tag.
   */
  static readonly LG: string = 'lg';

  /**
   * Width condition sm filter.
   */
  static readonly WIDTH_CONDITION_SM: string = '(320vp<=width<520vp)';

  /**
   * Width condition md filter.
   */
  static readonly WIDTH_CONDITION_MD: string = '(520vp<=width<840vp)';

  /**
   * Width condition lg filter.
   */
  static readonly WIDTH_CONDITION_LG: string = '(840vp<=width)';

  /**
   * Login page button id.
   */
  static readonly LOGIN_BUTTON_ID: string = 'loginButtonId';

  /**
   * Tablet device type.
   */
  static readonly TABLET_DEVICE_TYPE: string = 'tablet';
  /**
   * The offset x of CustomDialog.
   */
  static readonly OFFSET_X: number = 0;

  /**
   * The offset y of CustomDialog.
   */
  static readonly OFFSET_Y: number = -25;

  /**
   * Number for 90%.
   */
  static readonly PERCENT_NINETY: string = '90%';

  /**
   * Number for 100%.
   */
  static readonly PERCENT_FULL: string = '100%';

  /**
   * Number for font weight 700.
   */
  static readonly FONT_WEIGHT_SEVEN_HUNDRED: number = 700;

  /**
   * The placeholder of leap year textInput.
   */
  static readonly LEAP_YEAR_INPUT: string = '请输入一个年份';

  /**
   * The sure answer of wether is a leap year.
   */
  static readonly LEAP_YEAR_YES: string = '该年份是闰年';

  /**
   * The unsure answer of wether is a leap year.
   */
  static readonly LEAP_YEAR_NO: string = '该年份不是闰年';

  /**
   * The placeholder of string textInput.
   */
  static readonly STRING_INPUT: string = '请输入一个字符串';

  /**
   * The sure answer of wether is a palindromic string.
   */
  static readonly PALINDROMIC_STRING_YES: string = '该字符串是回文字符串';

  /**
   * The unsure answer of wether is a palindromic string.
   */
  static readonly PALINDROMIC_STRING_NO: string = '该字符串不是回文字符串';

  /**
   * The result of string reversal.
   */
  static readonly STRING_PRE: string = '反转结果为：';

  /**
   * The time of toast.
   */
  static readonly TOAST_TIME: number = 2000;
}

