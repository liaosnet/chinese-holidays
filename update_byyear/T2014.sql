-- 2014年假日表
/*
一、元旦：1月1日放假1天。
二、春节：1月31日至2月6日放假调休，共7天。1月26日（星期日）、2月8日（星期六）上班。
三、清明节：4月5日放假，4月7日（星期一）补休。
四、劳动节：5月1日至3日放假调休，共3天。5月4日（星期日）上班。
五、端午节：6月2日放假，与周末连休。
六、中秋节：9月8日放假，与周末连休。
七、国庆节：10月1日至7日放假调休，共7天。9月28日（星期日）、10月11日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where
   daytime_str between '2014-01-01' and '2014-01-01'    -- 元旦
or daytime_str between '2014-01-31' and '2014-02-06'    -- 春节
or daytime_str between '2014-04-05' and '2014-04-07'    -- 清明节
or daytime_str between '2014-05-01' and '2014-05-03'    -- 劳动节 
or daytime_str between '2014-06-02' and '2014-06-02'    -- 端午节 
or daytime_str between '2014-09-08' and '2014-09-08'    -- 中秋节
or daytime_str between '2014-10-01' and '2014-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2014-01-26','2014-02-08',                              -- 春节调班
'2014-05-04',                                           -- 劳动节调班
'2014-09-28','2014-10-11');                             -- 国庆节调班