-- 2015年假日表
/*
一、元旦：1月1日至3日放假调休，共3天。1月4日（星期日）上班。
二、春节：2月18日至24日放假调休，共7天。2月15日（星期日）、2月28日（星期六）上班。
三、清明节：4月5日放假，4月6日（星期一）补休。
四、劳动节：5月1日放假，与周末连休。
五、端午节：6月20日放假，6月22日（星期一）补休。
六、中秋节：9月27日放假。
七、国庆节：10月1日至7日放假调休，共7天。10月10日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where
   daytime_str between '2015-01-01' and '2015-01-03'    -- 元旦
or daytime_str between '2015-02-18' and '2015-02-24'    -- 春节
or daytime_str between '2015-04-05' and '2015-04-06'    -- 清明节
or daytime_str between '2015-05-01' and '2015-05-01'    -- 劳动节 
or daytime_str between '2015-06-20' and '2015-06-22'    -- 端午节 
or daytime_str between '2015-09-27' and '2015-09-27'    -- 中秋节
or daytime_str between '2015-10-01' and '2015-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2015-01-04',                                           -- 元旦调班
'2015-02-15','2015-02-28',                              -- 春节调班
'2015-10-10');                                          -- 国庆节调班