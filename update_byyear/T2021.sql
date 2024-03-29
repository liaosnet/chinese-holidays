-- 2021年假日表
/*
一、元旦：2021年1月1日至3日放假，共3天。
二、春节：2月11日至17日放假调休，共7天。2月7日（星期日）、2月20日（星期六）上班。
三、清明节：4月3日至5日放假调休，共3天。
四、劳动节：5月1日至5日放假调休，共5天。4月25日（星期日）、5月8日（星期六）上班。
五、端午节：6月12日至14日放假，共3天。
六、中秋节：9月19日至21日放假调休，共3天。9月18日（星期六）上班。
七、国庆节：10月1日至7日放假调休，共7天。9月26日（星期日）、10月9日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where
   daytime_str between '2021-01-01' and '2021-01-03'    -- 元旦
or daytime_str between '2021-02-11' and '2021-02-17'    -- 春节
or daytime_str between '2021-04-03' and '2021-04-05'    -- 清明节
or daytime_str between '2021-05-01' and '2021-05-05'    -- 劳动节 
or daytime_str between '2021-06-12' and '2021-06-14'    -- 端午节
or daytime_str between '2021-09-19' and '2021-09-21'    -- 中秋节
or daytime_str between '2021-10-01' and '2021-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2021-02-07','2021-02-20',                              -- 春节调班
'2021-05-08',                                           -- 劳动节调班
'2021-09-18',                                           -- 中秋节调班
'2021-09-26','2021-10-09');                             -- 国庆节调班