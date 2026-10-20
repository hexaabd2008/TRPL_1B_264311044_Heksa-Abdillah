-- CREATE: Menambahkan minimal 3 data ke tabel persimpangan
INSERT INTO persimpangan
(id_persimpangan, nama_persimpangan, lokasi)
VALUES
('P001', 'Perempatan Serayu', 'Jl. Serayu'),
('P002', 'Perempatan Sriti', 'Jl. Urip Sumoharjo dan JL. A.Yani'),
('P003', 'Perempatan PGA', 'Jl. Serayu,Berdekatan dengan perempatan serayu');

-- CREATE: Menambahkan minimal 3 data ke tabel petugas
INSERT INTO petugas
(id_petugas, nama_petugas, jabatan)
VALUES
('PT001', 'Keisya azalia', 'Administrator Sistem'),
('PT002', 'Mamun affandi', 'Operator Lalu Lintas'),
('PT003', 'Danish Hisyamuddin', 'Teknisi Perangkat');

-- CREATE: Menambahkan minimal 3 data ke tabel penyesuaian_durasi
INSERT INTO penyesuaian_durasi
(id_penyesuaian, waktu_penyesuaian, durasi_hijau_baru,
 id_persimpangan, id_petugas)
VALUES
('PJ001', '2026-9-19 07:00:00', 35, 'P001', 'PT001'),
('PJ002', '2026-9-19 07:15:00', 40, 'P002', 'PT002'),
('PJ003', '2026-9-19 07:30:00', 45, 'P003', 'PT003');

-- SELECT: Menampilkan seluruh data petugas
SELECT * FROM petugas;

-- UPDATE: Mengubah jabatan petugas PT002
UPDATE petugas
SET jabatan = 'Koordinator Lalu Lintas'
WHERE id_petugas = 'PT002';

-- DELETE: Menghapus data penyesuaian PJ002
DELETE FROM penyesuaian_durasi
WHERE id_penyesuaian = 'PJ002';
