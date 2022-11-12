use toko_retail_online;
SELECT transaksi_pembelian.id, pelanggan.nama as pelanggan,produk.nama as produk, transaksi_pembelian.tanggal_pembelian, transaksi_pembelian.jumlah_barang, transaksi_pembelian.total_harga
FROM ((pelanggan
left join transaksi_pembelian ON pelanggan.id= transaksi_pembelian.id_pelanggan )
left join produk ON transaksi_pembelian.id_produk = produk.id);