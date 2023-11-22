CREATE TABLE agg_table (
SELECT
    tanggal,
    id_invoice,
    id_customer,
    cabang_sales AS lokasi_cabang,
    nama AS pelanggan,
    nama_barang AS produk,
    lini AS merek,
    jumlah AS jumlah_produk_terjual,
    harga AS harga_satuan,
    (jumlah * harga) AS total_pendapatan
    COUNT(DISTINCT id_barang) total_barang
FROM base_table
ORDER BY 1, 4, 5, 6, 7, 8, 9
);