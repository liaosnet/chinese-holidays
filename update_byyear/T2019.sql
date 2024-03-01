-- 2019年假日表
/*
一、元旦：2018年12月30日至2019年1月1日放假调休，共3天。2018年12月29日（星期六）上班。
二、春节：2月4日至10日放假调休，共7天。2月2日（星期六）、2月3日（星期日）上班。
三、清明节：4月5日放假，与周末连休。
四、劳动节：5月1日放假。
五、端午节：6月7日放假，与周末连休。
六、中秋节：9月13日放假，与周末连休。
七、国庆节：10月1日至7日放假调休，共7天。9月29日（星期日）、10月12日（星期六）上班。
 */
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2018-12-30' and '2019-01-01'    -- 元旦
or daytime_str between '2019-02-04' and '2019-02-10'    -- 春节
or daytime_str between '2019-04-05' and '2019-04-05'    -- 清明节
or daytime_str between '2019-05-01' and '2019-05-01'    -- 劳动节  
or daytime_str between '2019-06-07' and '2019-06-07'    -- 端午节
or daytime_str between '2019-09-13' and '2019-09-13'    -- 中秋节
or daytime_str between '2019-10-01' and '2019-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2018-12-29',                                           -- 元旦调班
'2019-02-02','2019-02-03',                              -- 春节调班
'2019-09-29', '2019-10-12');                            -- 国庆节调班