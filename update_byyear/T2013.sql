-- 2013年假日表
/*
一、元旦：1月1日至3日放假调休，共3天。1月5日（星期六）、1月6日（星期日）上班。
二、春节：2月9日至15日放假调休，共7天。2月16日（星期六）、2月17日（星期日）上班。
三、清明节：4月4日至6日放假调休，共3天。4月7日（星期日）上班。
四、劳动节：4月29日至5月1日放假调休，共3天。4月27日（星期六）、4月28日（星期日）上班。
五、端午节：6月10日至12日放假调休，共3天。6月8日（星期六）、6月9日（星期日）上班。
六、中秋节：9月19日至21日放假调休，共3天。9月22日（星期日）上班。
七、国庆节：10月1日至7日放假调休，共7天。9月29日（星期日）、10月12日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2013-01-01' and '2013-01-03'    -- 元旦
or daytime_str between '2013-02-09' and '2013-02-15'    -- 春节
or daytime_str between '2013-04-04' and '2013-04-06'    -- 清明节
or daytime_str between '2013-04-29' and '2013-05-01'    -- 劳动节 
or daytime_str between '2013-06-10' and '2013-06-12'    -- 端午节 
or daytime_str between '2013-09-19' and '2013-09-21'    -- 中秋节
or daytime_str between '2013-10-01' and '2013-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2013-01-05','2013-01-06',                              -- 元旦调班
'2013-02-16','2013-02-17',                              -- 春节调班
'2013-04-07',                                           -- 清明节调班
'2013-04-27','2013-04-28',                              -- 劳动节调班
'2013-06-08','2013-06-09',                              -- 端午节调班
'2013-09-22',                                           -- 中秋节调班
'2013-09-29','2013-10-12');                             -- 国庆节调班