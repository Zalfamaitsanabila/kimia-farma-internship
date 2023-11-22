CREATE SCHEMA kimiafarma;
USE kimiafarma;

-- Membuat tabel 
-- Tabel penjualan
CREATE TABLE `kimiafarma`.`penjualan` (
  `id_distributor` VARCHAR(45) NOT NULL,
  `id_cabang` VARCHAR(45) NULL,
  `id_invoice` VARCHAR(45) NULL,
  `tanggal` VARCHAR(45) NULL,
  `id_customer` VARCHAR(45) NULL,
  `id_barang` VARCHAR(45) NULL,
  `jumlah` INT NULL,
  `unit` VARCHAR(45) NULL,
  `harga` DECIMAL(45) NULL,
  `mata_uang` VARCHAR(45) NULL,
  `brand_id` VARCHAR(45) NULL,
  `lini` VARCHAR(45) NULL,
  PRIMARY KEY (`id_invoice`));

-- Tabel barang
CREATE TABLE `kimiafarma`.`barang` (
  `kode_barang` VARCHAR(45) NOT NULL,
  `sektor` VARCHAR(45) NULL,
  `nama_barang` VARCHAR(45) NULL,
  `tipe` VARCHAR(45) NULL,
  `nama_tipe` VARCHAR(45) NULL,
  `kode_lini` VARCHAR(45) NULL,
  `lini` VARCHAR(45) NULL,
  `kemasan` VARCHAR(45) NULL,
  PRIMARY KEY (`kode_barang`));

-- tabel pelanggan
CREATE TABLE `kimiafarma`.`pelanggan` (
  `id_customer` VARCHAR(45) NOT NULL,
  `level` VARCHAR(45) NULL,
  `nama` VARCHAR(45) NULL,
  `id_cabang` VARCHAR(45) NULL,
  `cabang_sales` VARCHAR(45) NULL,
  `id_group` VARCHAR(45) NULL,
  `group` VARCHAR(45) NULL,
  PRIMARY KEY (`id_customer`));