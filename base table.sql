CREATE TABLE base_table (
SELECT
    jl.id_invoice,
    jl.tanggal,
    jl.id_customer,
    cst.nama,
    jl.id_distributor,
    jl.id_cabang,
    cst.cabang_sales,
    cst.id_group,
    cst.group,
    jl.id_barang,
    brg.nama_barang,
    jl.brand_id,
    brg.kode_lini,
    jl.lini,
    brg.kemasan,
    jl.jumlah,
    jl.harga,
    jl.mata_uang
FROM penjualan jl
	LEFT JOIN pelanggan cst
		ON cst.id_customer = jl.id_customer
	LEFT JOIN barang brg
		ON brg.kode_barang = jl.id_barang
ORDER BY jl.tanggal
);

-- Menentukan primary key
ALTER TABLE base_table ADD PRIMARY KEY(id_invoice);