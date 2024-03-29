-- 2001年假日表
/*
一、春节。按规定放假３天（１月２４、２５、２６日），同时将１月２０日（星期六）、２１日（星期日）的公休调至１月２９日（星期一）、３０日（星期二），１月２７日（星期六）、２８日（星期日）照常公休。这样，春节放假时间从１月２４日至３０日，共７天。１月２０日、２１日上班。
二、“五一”。按规定放假３天（５月１、２、３），同时将４月２８日（星期六）、２９日（星期日）的公休调至５月４日（星期五）、５月７日（星期一），５月５日（星期六）、６日（星期日）照常公休。这样，“五一”放假时间从５月１日至７日，共７天。４月２８日、２９日上班。
三、“十一”。按规定放假３天（１０月１、２、３），同时将９月２９日（星期六）、３０日（星期日）的公休调至１０月４日（星期四）、５日（星期五），１０月６日（星期六）、７日（星期日）照常公休。这样，“十一”放假时间从１０月１日至７日，共７天。９月２９日、３０日上班。
注：本年元旦休息
 */
-- 需要更新
update tb_work_holiday set daytype = 2
where 
   daytime_str between '2001-01-01' and '2001-01-01'    -- 元旦 
or daytime_str between '2001-01-24' and '2001-01-30'    -- 春节
or daytime_str between '2001-05-01' and '2001-05-07'    -- 劳动节
or daytime_str between '2001-10-01' and '2001-10-07';   -- 国庆节
-- 更新调班
update tb_work_holiday set daytype = 0
where daytime_str in (
'2001-01-20','2001-01-21',                              -- 春节调班
'2001-04-28','2001-04-29',                              -- 劳动节调班
'2001-09-29','2001-09-20');                             -- 国庆节调班