use toko_retail_online;
select produk.id,produk.nama,kategori.nama as kategori,count(id_produk) as jumlah_transaksi,sum(jumlah_barang) as jumlah_terjual
from ((produk 
inner join transaksi_pembelian on transaksi_pembelian.id_produk = produk.id)
inner join kategori on produk.id_kategori = kategori.id)
group by produk.nama order by jumlah_transaksi DESC LIMIT 3;

