use toko_retail_online;
select kategori.id,kategori.nama as kategori, count(id_kategori) as jumlah_produk
from produk inner join kategori
on produk.id_kategori = kategori.id
group by id_kategori order by jumlah_produk DESC;