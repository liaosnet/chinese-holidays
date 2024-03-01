create table tb_work_holiday 
  (
    daytime date,
    daytime_str char(10),
    daytime_chn varchar(40),
    weekday smallint,
    daytype smallint,
    primary key (daytime,daytype) 
  );
COMMENT on table tb_work_holiday is '工作日假日表';
COMMENT on column tb_work_holiday.daytime is '公历日期';
COMMENT on column tb_work_holiday.daytime_str is '日期（字符型）';
COMMENT on column tb_work_holiday.daytime_chn is '农历日期';
COMMENT on column tb_work_holiday.weekday is '星期几（0代表周日）';
COMMENT on column tb_work_holiday.daytype is '日期类型：0工作日、1周末假、2节日假';
create unique index ix_tb_work_holiday_daytime_str 
    on tb_work_holiday (daytime_str,daytype); 
