# yzhy
泰州黄页、生活助手

>第一阶段

主要提供一些泰州当地一些网站链接，联系方式，使用户通过本站满足基本工作生活需要
主要包括：机关单位、生活保障、教育、医疗、娱乐（KTV、酒吧等）、餐饮、酒店、购物、新闻、当地较出名企业链接和电话簿
样式：参加草图

>第二阶段

开发公众号

###数据库设计（第一阶段）

>单位信息分模块管理，每个模块设置一名管理员，一个单位只能属于一个模块，普通用户
>可以纠正单位信息，但是纠正需要管理员手动处理

* 1、用户基本信息表（t_user）

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|user_id|bigint|主键，自增长|
|用户名|user_name|varchar||
|密码|user_pwd|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||

* 2、用户信息表（t_user_info）

>用户信息表，为第二阶段使用

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|user_info_id|bigint|主键，自增长|
|用户id|user_id|bigint||
|生日|birth|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||

* 3、角色表（t_role）
|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|role_id|bigint|主键，自增长|
|角色名称|role_name|varchar||
|权限|auth|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||

* 4、用户角色关系表（t_user_role_rela）
|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|rela_id|bigint|主键，自增长|
|用户id|user_id|bigint||
|角色id|role_id|bigint||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||

* 5、单位信息表（t_enterprise_info）

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|enterprise_id|bigint|主键，自增长|
|名称|enterprise_name|varchar||
|地址|enterprise_addr|varchar||
|网址|enterprise_url|varchar||
|电话|enterprise_phone|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||
|状态|status|char|若为0，需要管理员审核；1：表示正常状态|

* 6、单位信息纠正表（t_enterprise_info_correct）

>此表用于纠正单位信息使用，一个单位未处理中的纠正记录只能唯一;
>第一阶段用户不需登录，纠正的话需要记录用户信息；
>到第二阶段引入用户登录，只需登记user_id

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|corr_id|bigint|主键，自增长|
|单位id|enterprise_id|bigint|主键，自增长|
|名称|enterprise_name|varchar||
|地址|enterprise_addr|varchar||
|网址|enterprise_url|varchar||
|电话|enterprise_phone|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||
|状态|status|char|若为0，需要管理员审核；1：表示已采用；2：丢弃|
|纠正人称呼|corr_name|varchar||
|纠正人联系方式|corr_phone|varchar||
|纠正人邮箱|corr_email|varchar||


* 7、模块表（t_moudle）

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|module_id|bigint|主键，自增长|
|名称|moudle_name|varchar||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||
|所属角色|role_id|bigint|拥有管理权的角色|

* 8、单位与模块关系表（t_enterprise_moudle_rela）

|Name|Code|Data Typ|Desc|
|--------|:--------:|--------|--------:|
|主键|rela_id|bigint|主键，自增长|
|单位id|enterprise_name|bigint||
|模块id|module_id|igint||
|创建时间|create_time|timestamp||
|更新时间|update_time|timestamp||



