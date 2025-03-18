# HarmonyDemo

Harmony学习demo

### 文件类型
- 配置文件: 包括应用级配置信息、以及Module级配置信息：
  - AppScope > app.json5：app.json5配置文件，用于声明应用的全局配置信息，比如应用Bundle名称、应用名称、应用图标、应用版本号等。
  - Module_name > src > main > module.json5：module.json5配置文件，用于声明Module基本信息、支持的设备类型、所含的组件信息、运行所需申请的权限等。
- ArkTS源码文件
  - Module_name > src > main > ets：用于存放Module的ArkTS源码文件（.ets文件）。
- 资源文件：包括应用级资源文件、以及Module级资源文件，支持图形、多媒体、字符串、布局文件等
  - AppScope > resources ：用于存放应用需要用到的资源文件。
  - Module_name > src > main > resources ：用于存放该Module需要用到的资源文件。
- 其他配置文件: 用于编译构建，包括构建配置文件、编译构建任务脚本、混淆规则文件、依赖的共享包信息等
  - build-profile.json5：工程级或Module级的构建配置文件，包括应用签名、产品配置等。
  - hvigorfile.ts：应用级或Module级的编译构建任务脚本，开发者可以自定义编译构建工具版本、控制构建行为的配置参数。
  - obfuscation-rules.txt：混淆规则文件。混淆开启后，在使用Release模式进行编译时，会对代码进行编译、混淆及压缩处理，保护代码资产。
  - oh-package.json5：用于存放依赖库的信息，包括所依赖的三方库和共享包。


### 配置代码检查规则

在工程根目录下创建code-linter.json5配置文件，可对于代码检查的范围及对应生效的检查规则进行配置，其中files和ignore配置项共同确定了代码检查范围，ruleSet和rules配置项共同确定了生效的规则范围。具体配置项功能如下：

- files：配置待检查的文件名单，如未指定目录，规则适用于所有文件，例如：[“**/*.ets”,”**/*.js”,”**/*.ts”]。
- ignore：配置无需检查的文件目录，其指定的目录或文件需使用相对路径格式，相对于code-linter.json5所在工程根目录，例如：build/**/*。
- ruleSet：配置检查使用的规则集，规则集支持一次导入多条规则。规则详情请参见Code Linter代码检查规则。目前支持的规则集包括：
    - **通用规则@typescript-eslint**
    - **一次开发多端部署规则@cross-device-app-dev**
    - **ArkTS代码风格规则@hw-stylistic**
    - **安全规则@security**
    - **性能规则@performance**
    - **预览规则@previewer**
- rules：可以基于ruleSet配置的规则集，新增额外规则项，或修改ruleSet中规则默认配置，例如：将规则集中某条规则告警级别由warn改为error。

| 字段名称 | 参数说明  | 是否必选  | 类型  |  支持配置的参数 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| selector  | 配置要检查的语法  | 是  | 字符串、字符串数组  |  <ul><li>variable：变量</li><li>function：函数</li><li>parameter：参数</li><li>parameterProperty：参数属性</li><li>accessor：get/set方法</li><li>enumMember：枚举成员</li><li>classMethod：类方法</li><li>structMethod：自定义组件中的方法</li><li>objectLiteralMethod：对象方法</li><li>typeMethod：接口方法</li><li>classProperty：类属性</li><li>structProperty：自定义组件中的属性</li><li>objectLiteralProperty：对象属性</li><li>typeProperty：接口属性</li><li>class：类</li><li>struct：自定义组件</li><li>interface：接口</li><li>typeAlias：类型别名</li><li>enum：枚举</li><li>typeParameter：泛型参数</li><li>default：包含以上所有的类型</li><li>variableLike：包含variable，function，parameter</li><li>memberLike：包含classProperty，structProperty，objectLi…assMethod，objectLiteralMethod，typeMethod，accessor</li><li>typeLike：包含class，struct，interface，typeAlias，enum，typeParameter</li><li>method：包含classMethod，structMethod，objectLiteralMethod，typeMethod</li><li>property：包含classProperty，objectLiteralProperty，typeProperty</li></ul> |
| format  | 配置期望的命名风格  |  是 |  字符串数组 | <ul><li>camelCase：小驼峰命名风格，比如getName，getID（支持连续大写字母），不支持下划线</li><li>strictCamelCase：严格小驼峰命名风格，除了不支持连续大写字母（getID），其他的和camelCase相同</li><li>PascalCase：大驼峰命名风格，比如Foo，CC，除了要求第一个字母大写，其他的和camelCase相同</li><li>StrictPascalCase：大驼峰命名风格，除了不支持连续大写字母（CC），其他的和PascalCase相同</li><li>snake_case：小写字母+下划线+小写字母的命名风格，比如a_a，不支持_a，a_a_</li><li>UPPER_CASE：大写字母+下划线+大写字母的命名风格，比如A_A，不支持_A，A_A_</li></ul>  |
| custom  | 配置用户自定义的命名风格  | 否  |  对象 | <ul><li>regex：属性必选，配置具体的正则</li><li>match：属性必选，配置为true表示正则未命中时报错，配置为false表示正则命中时报错</li></ul>  |
| leadingUnderscore/trailingUnderscore  | 配置是否允许以下划线开头/以下划线结尾的命名风格  |  否 |  字符串 | <ul><li>allow：允许以一个下划线开头/结尾的命名风格，比如_name</li><li>allowDouble：允许以两个下划线开头/结尾的命名风格，比如__name</li><li>allowSingleOrDouble：允许以一个或者两个下划线开头/结尾的命名风格（allow+allowDouble）</li><li>forbid：禁止以下划线开头/结尾的命名风格，比如_name，__name</li><li>require：必须是以下划线开头/结尾的命名风格，比如_name，__name</li><li>requireDouble：必须是以两个下划线开头/结尾的命名风格，比如__name</li></ul>  |
| prefix/suffix  | 配置固定前缀/后缀的命名风格。如果前缀/后缀未匹配则报错  | 否  |  字符串数组 |  用户自定义前缀/后缀 |
| filter  |  过滤特定的命名风格，检查或者不检查正则命中的命名 | 否  | 对象  | 配置格式与custom相似match：设置为true表示只检查正则命中的名字，设置为false表示不检查正则命中的名字regex：设置过滤的正则  |
| modifiers  | 匹配修饰符，只有包含特定修饰符的命名才会检查  | 否  |  字符串数组 | <ul><li>abstract：匹配abstract关键字</li><li>override：匹配override关键字</li><li>private：匹配private关键字</li><li>protected：匹配protected关键字</li><li>static：匹配static关键字</li><li>async：匹配async关键字</li><li>const：匹配const关键字</li><li>destructured：匹配解构语法</li><li>exported：匹配export关键字</li><li>global：匹配全局声明</li><li>#private：匹配私有符号#</li><li>public：匹配public级别的访问修饰符</li><li>requiresQuotes：匹配字符串类型的命名，并且 字符串中包含特殊字符</li><li>unused：匹配未使用的声明</li></ul>  |
| types  | 匹配类型，只有特定类型的名字才会检查  | 否  | 字符串数组  | <ul><li>array：数组类型</li><li>boolean：布尔类型</li><li>function：函数类型</li><li>number：数字类型</li><li>string：字符串类型</li></ul>  |


- overrides：针对工程根目录下部分特定目录或文件，可配置定制化检查的规则。

<br>

> **屏蔽告警信息：**
>    -   在某些特殊场景下，若扫描结果中出现误报，点击单条告警结果后的Ignore图标，可以忽略对告警所在行的code linter检查；或勾选文件名称或多条待屏蔽的告警，点击左侧工具面板Ingore图标批量执行操作；
>    - 在文件顶部添加注释/* eslint-disable * /可以屏蔽整个文件执行code linter检查，在eslint-disable 后加入一个或多个以逗号分隔的规则Id，可以屏蔽具体检查规则；
>    - 在需要忽略检查的代码块前后分别添加/ * eslint-disable * /和/* eslint-enable * /添加注释信息，再执行Code Linter，将不再显示该代码块扫描结果；在待屏蔽的代码行前一行添加/* eslint-disable-next-line */，也可屏蔽对该代码行的codelinter检查。




## 切换工程视图
DevEco Studio工程目录结构提供工程视图和Ohos视图。工程视图（Project）展示工程中实际的文件结构，Ohos视图会隐藏一些编码中不常用到的文件，并将常用到的文件进行重组展示，方便开发者查询或定位所需编辑的模块或文件。
