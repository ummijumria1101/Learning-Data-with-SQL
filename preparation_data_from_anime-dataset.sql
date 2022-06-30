--Mengambil data untuk menampilkan studio dengan anime terbanyak
SELECT * FROM animelist
order by id;

--delete kolom synopsis
alter table animelist
drop column synopsis;

--ganti tipe data id
alter table animelist
alter column id type integer USING (id::integer);

select distinct studio, count(name) as jumlah_anime
from animelist
group by studio
order by jumlah_anime desc;

--source anime < tahun 2010
select source, count(source) as jumlah_source
from animelist
where year<2010
group by source
order by jumlah_source asc;

--source anime dari studio toei animation terbanyak diatas tahun 2010
select source, count(source) as jumlah_source
from animelist
where studio='Toei Animation' and year>2010
group by source
