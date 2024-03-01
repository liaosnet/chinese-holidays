-- 2010年假日表
/*
一、元旦：1月1日至3日放假公休，共3天。
二、春节：2月13日至19日放假调休，共7天。2月20日（星期六）、21日（星期日）上班。
三、清明节：4月3日至5日放假公休，共3天。
四、劳动节：5月1日至3日放假公休，共3天。
五、端午节：6月14日至16日放假调休，共3天。6月12日（星期六）、13日（星期日）上班。
六、中秋节：9月22日至24日放假调休，共3天。9月19日（星期日）、25日（星期六）上班。
七、国庆节：10月1日至7日放假调休，共7天。9月26日（星期日）、10月9日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2010-01-01' and '2010-01-03'    -- 元旦
or daytime_str between '2010-02-13' and '2010-02-19'    -- 春节
or daytime_str between '2010-04-03' and '2010-04-05'    -- 清明节   
or daytime_str between '2010-05-01' and '2010-05-03'    -- 劳动节
or daytime_str between '2010-06-14' and '2010-06-16'    -- 端午节
or daytime_str between '2010-09-22' and '2010-09-24'    -- 中秋节
or daytime_str between '2010-10-01' and '2010-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2010-02-20','2010-02-21',                              -- 春节调班
'2010-06-12','2010-06-13',                              -- 端午节调班
'2010-09-19','2010-09-25',                              -- 中秋节调班
'2010-09-26','2010-10-09');                             -- 国庆节调班