select * from datacovid
order by 3,4;
--ubah tipe data tanggal
alter table datacovid
alter column datee type date;

alter table datacovid
drop column tests_per_case;

 

 --buat variabel baru
 select locationn, datee, total_cases, new_cases, total_deaths
from datacovid
order by 3,4;

--ganti tipe data total cases, new cases, date
alter table datacovid
alter column total_cases type decimal USING (total_cases::decimal);

--buat variabel persentasi kematian
 select locationn, datee, total_cases, new_cases, total_deaths, (total_deaths/total_cases)*100 as persentasi_kematian
from datacovid
where locationn like '%Indo%'
order by 1,2;

--cek negara dengan presentasi tertinggi
 select distinct locationn, max(total_cases) as kasustertinggi, new_cases, total_deaths, max((total_deaths/total_cases))*100 as persentasi_kematian
from datacovid
order by persentasi_kematian;

select distinct locationn, max(total_cases) over (partition by locationn) as totalcases,
max(total_deaths) over (partition by locationn) as totaldeaths,
max((total_deaths/total_cases)*100) over (partition by locationn) as persentasi_kematian
from datacovid
order by persentasi_kematian desc;