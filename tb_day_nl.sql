
create table tb_day_nl 
  (
    daytime date,
    daytime_chn varchar(20),
    weekday varchar(10),
    solar_term varchar(10),
    primary key (daytime) 
  ) ;

COMMENT ON TABLE tb_day_nl is '公历和农历对应表';
COMMENT on COLUMN tb_day_nl.daytime is '日期';
COMMENT on COLUMN tb_day_nl.daytime_chn is '农历日';
COMMENT on COLUMN tb_day_nl.weekday is '周几';
COMMENT on COLUMN tb_day_nl.solar_term is '节气';
