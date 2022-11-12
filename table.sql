use toko_retail_online;
create table pelanggan (
	id int primary key not null auto_increment,
	nama VARCHAR(50),
    no_hp char(15),
    username varchar(25),
    password varchar(25)
);
create table admin (
	id int primary key not null auto_increment,
	nama VARCHAR(50),
    username varchar(25),
    password varchar(25)
);
create table kategori (
	id int primary key not null auto_increment,
	nama VARCHAR(50),
    deskripsi varchar(100),
    rating float(25)
);
create table produk (
	id int primary key not null auto_increment,
	nama VARCHAR(50),
	harga int,
    id_admin int,
	id_kategori int,
    FOREIGN KEY (id_admin) REFERENCES admin(id),
	FOREIGN KEY (id_kategori) REFERENCES kategori(id)
);
create table transaksi_pembelian (
	id int primary key not null auto_increment,
    id_produk int,
	id_pelanggan int,
	tanggal_pembelian date,
	jumlah_barang int,
    total_harga int,
    FOREIGN KEY (id_produk) REFERENCES produk(id),
	FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id)
);
insert into pelanggan(nama,no_hp,username,password)values
("Reni",087561234567,"renii12","1234"),
("Andri",089743214222,"andri123","123"),
("Sani",087654123900,"saniarati","sani123"),
("Ajeng",081654200128,"Ajengrahayu","ajeng123"),
("Ratih",087543122870,"ratih","ratih123"),
("Bagas",085432222456,"bagas","bagas123"),
("Rina",0857690880700,"rina","rina123"),
("Agung",089721344190,"agung","agung123"),
("Febri",081230455678,"febri","febri123"),
("Sinta",089765432100,"sinta","sinta123");
insert into kategori(nama,deskripsi,rating)values
("Peralatan rumah tangga","pembelian bisa grosir atau satuan",4.8),
("Pakaian wanita","ada lengan panjang dan pendek",4.5),
("Peralatan sekolah","pembelian bisa grosir atau satuan",4.8),
("Make up","pembelian min 1 pcs",4.7),
("Fashion wanita muslim","ada model terusan dan potongan",4.5),
("Elektronik","pembelian min 1 unit",4.8),
("Aksesoris","pembelian bisa grosir atau satuan",4.8),
("Perlengkapan bayi","pembelian bisa grosir atau satuan",4.6),
("Pakaian pria","ada lengan panjang dan pendek",4.7),
("Pakaian anak-anak","ada model cewek dan cowok",4.8);
insert into admin(nama,username,password)values
("Santi","santi112","123"),
("Adi","adi1611","1234"),
("Rendi","rendi","rendi123"),
("Sonya","sonya","sonya123"),
("Riyan","riyan","riyan123"),
("Erika","erika","erika123"),
("Cindi","cindi","cindi123"),
("Wahyu","wahyu","wahyu123"),
("Rosi","rosi","rosi123"),
("Salsa","salsa","salsa123");
insert into produk(nama,harga,id_kategori,id_admin)values
("Jam dinding",15000,1,3),
("Karpet bulu",35000,1,1),
("Dress",75000,2,3),
("Dress rainbow",45000,10,2),
("Jumper bayi",38000,8,4),
("Eyeshadow lameila",35000,4,9),
("Liptint hanasui",17500,4,2),
("Lipcream wardah",30000,4,9),
("Smartphone Reno8",1000000,6,7),
("Gamis noora",105000,5,7);
insert into transaksi_pembelian(id_pelanggan,id_produk,tanggal_pembelian,jumlah_barang,total_harga)values
(1,2,"2022-11-01",3,105000),
(1,3,"2022-11-01",1,35000),
(3,2,"2022-11-01",2,70000),
(6,5,"2022-11-02",1,38000),
(2,6,"2022-11-02",2,70000),
(3,7,"2022-11-04",1,17500),
(7,4,"2022-11-05",2,90000),
(5,10,"2022-11-06",1,105000),
(8,2,"2022-11-08",3,105000),
(4,10,"2022-11-09",1,105000),
(3,1,"2022-11-10",1,15000),
(8,1,"2022-11-01",1,15000),
(9,4,"2022-12-01",1,45000);


select*from pelanggan;
select*from transaksi_pembelian;
SELECT transaksi_pembelian.id, pelanggan.nama as pelanggan,produk.nama as produk, transaksi_pembelian.tanggal_pembelian, transaksi_pembelian.jumlah_barang, transaksi_pembelian.total_harga
FROM ((transaksi_pembelian
INNER JOIN pelanggan ON transaksi_pembelian.id_pelanggan = pelanggan.id)
INNER JOIN produk ON transaksi_pembelian.id_produk = produk.id) ORDER BY transaksi_pembelian.id ;
SELECT * FROM produk WHERE harga >= 50000;
SELECT *FROM admin WHERE nama LIKE '%a';
select*from kategori;
UPDATE produk
SET nama = 'Dress flower', harga= '85000'
WHERE id = 4;
delete from kategori where id=10;
drop table transaksi_pembelian;
drop database toko_retail_online;














   
