<?php
/**
 *获取首页显示需要的数据，主要为模块及其包含企业信息
 * 2016-07-11
 * by liuyuan
 */
include_once 'config.php';
include_once './inc/mysqlClass.php';
$mq = new Mysqls(false, $config); 

/**数据格式**
$arr[id][name]=string
$arr[id][details]=array(id,name,url,phone);
*/
$q="select t1.module_id,t1.module_name,t3.enterprise_id,t3.enterprise_name,t3.enterprise_addr,t3.enterprise_url,t3.enterprise_phone
	from t_module t1, t_enterprise_module_rela t2, t_enterprise_info t3
	where t1.module_id=t2.module_id and t2.enterprise_id=t3.enterprise_id and t3.status='1'
	order by t1.disorder,t3.disorder";

?>