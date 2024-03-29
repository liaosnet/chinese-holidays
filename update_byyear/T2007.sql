-- 2007年假日表，4个法定节假日
/*
一、元旦：1月1日—3日放假，共3天。其中1月1日为法定假日，将2006年12月30日（星期六)、31日（星期日）两个公休日分别调至2007年1月2日、3日，2006年12月30日（星期六)、31日（星期日）上班。
二、春节：2月18日—24日（即农历大年初一至初七）放假，共7天。其中18日、19日、20日为法定假日，将17日（星期六)、18日（星期日)、25日（星期日）三个公休日分别调至21日（星期三)、22日（星期四)、23日（星期五)；24日（星期六）照常公休，17日、25日上班。
三、“五一”：5月1日—7日放假，共7天。其中，1日、2日、3日为法定假日，将4月28日（星期六)、29日（星期日）两个公休日调至5月4日（星期五)、7日（星期一)；5月5日（星期六)、6日（星期日）照常公休，4月28日、29日上班。
四、“十一”：10月1日—7日放假，共7天。其中，1日、2日、3日为法定假日，将9月29日（星期六)、30日（星期日）两个公休日调至10月4日（星期四)、5日（星期五)；10月6日（星期六)、7日（星期日）照常公休，9月29日、30日上班。
 */
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2007-01-01' and '2007-01-03'    -- 元旦
or daytime_str between '2007-02-18' and '2007-02-24'    -- 春节
or daytime_str between '2007-05-01' and '2007-05-07'    -- 劳动节
or daytime_str between '2007-10-01' and '2007-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2006-12-30','2006-12-31',                              -- 元旦调班
'2007-02-17','2007-02-25',                              -- 春节调班
'2007-04-28','2007-04-29',                              -- 劳动节调班
'2007-09-29','2007-09-30');                             -- 国庆节调班