# 中国假日及农历  
包含2000年01月01日到2099年12月31日之前的所有日期  
使用到的表结构如下：  
```sql
drop table if exists tb_work_holiday;
create table tb_work_holiday
(
  daytime date,       
  daytime_str char(10),    -- 2024-02-10
  daytime_chn varchar(40), -- 正月初一
  weekday smallint,
  daytype smallint,
  PRIMARY key(daytime,daytype)
);
COMMENT on table tb_work_holiday is '工作日假日表';
COMMENT on column tb_work_holiday.daytime is '公历日期';
COMMENT on column tb_work_holiday.daytime_str is '日期（字符型）';
COMMENT on column tb_work_holiday.daytime_chn is '农历日期';
COMMENT on column tb_work_holiday.weekday is '星期几（0代表周日）';
COMMENT on column tb_work_holiday.daytype is '日期类型：0工作日、1周末假、2节日假';
create unique index ix_tb_work_holiday_daytime_str on tb_work_holiday (daytime_str,daytype); 
```
导入数据：  
```shell
# 设置日期型环境变量 Y4MD- 表示YYYY-MM-DD
export DBDATE=Y4MD-
```
从unl中导入数据  
```sql
load from tb_work_holiday.unl insert into tb_work_holiday;
```

**注意：**
已经按照现在官方通告，更新到了2024年（含）的节假日。后续应根据最新官方通告更新相应的记录。  
农历数据来源：[香港天文台](https://www.hko.gov.hk/sc/gts/time/conversion.htm)  
- 更新日期： 2024-11-12  
2025年假日信息sql语句T2025.sql  

- 更新日期： 2024-03-01  
2024年（不含）之后的假日信息（daytpe 仅定义了 1周末假和0工作日）。  

示例：    
获取某段日期内的节假日列表：  
```sql
select daytime,daytime_chn 
from tb_work_holiday 
where daytime between '2024-01-01' and '2024-12-31' 
  and daytype = 2;
```