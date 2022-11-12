use toko_retail_online;
select id_pelanggan,pelanggan.nama,count(id_produk) as jumlah_transaksi,sum(total_harga) as total_harga,
avg(total_harga)as avg_nilai_transaksi
from ((transaksi_pembelian inner join pelanggan ON pelanggan.id= transaksi_pembelian.id_pelanggan )
inner join produk ON transaksi_pembelian.id_produk = produk.id)
where tanggal_pembelian >="2022-11-01" and tanggal_pembelian < "2022-12-01" 
group by id_pelanggan;
SELECT count(id_pelanggan) as jumlah_pelanggan,sum(total_harga) as total,avg(total_harga) from transaksi_pembelian
inner join pelanggan ON pelanggan.id= transaksi_pembelian.id_pelanggan;