-- 2002年假日表，本年开始有4个法定节假日
/*
一、元旦：1月1日——3日放假休息，共3天。其中，1日为法定假日，将2001年12月29日（星期六）、30日（星期日）的公休日分别调至2002年1月2日（星期三）、1月3日（星期四）休息。2001年12月29、30日上班。
二、春节：2月12日——18日（即农历大年初一至初七）放假休息，共7天。其中，12日、13日、14日为法定假日，将2月9日（星期六）、10日（星期日）的公休日分别调至2月15日（星期五）、18日（星期一）休息，2月16日（星期六）、17日（星期日）照常公休，2月9日、10日上班。
三、“五一”：5月1日——7日放假休息，共7天。其中，1日、2日、3日为法定假日，将4月27日（星期六）、28日（星期日）的公休日分别调至5月6日（星期一）、5月7日（星期二）休息，5月4日（星期六）、5日（星期日）照常公休，4月27日、28日上班。
四、“十一”：10月1日——7日放假休息，共7天。其中，1日、2日、3日为法定假日，将9月28日（星期六）、29日（星期日）的公休日分别调至10月4日（星期五），10月7日（星期一）休息，10月5日（星期六）、6日（星期日）照常公休，9月28日、29日上班。
 */
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2002-01-01' and '2002-01-03'    -- 元旦
or daytime_str between '2002-02-12' and '2002-02-18'    -- 春节
or daytime_str between '2002-05-01' and '2002-05-07'    -- 劳动节
or daytime_str between '2002-10-01' and '2002-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2001-12-29','2001-12-30',                              -- 元旦调班
'2002-02-09','2002-02-10',                              -- 春节调班
'2002-04-27','2002-04-28',                              -- 劳动节调班
'2002-09-28','2002-09-29');                             -- 国庆节调班