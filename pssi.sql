-- HEADER KONFIGURASI
SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int NOT NULL COMMENT 'id berita',
  `judul_berita` varchar(100) NOT NULL COMMENT 'judul berita',
  `isi_berita` text NOT NULL COMMENT 'isi berita',
  `kategori_berita` varchar(50) NOT NULL COMMENT 'kategori/label',
  `status_berita` enum('Diterbitkan','Draft') NOT NULL COMMENT 'status berita',
  `penulis_berita` varchar(30) NOT NULL COMMENT 'penulis',
  `gambar_berita` varchar(255) NOT NULL COMMENT 'gambar',
  `tanggal_berita` varchar(25) DEFAULT NULL COMMENT 'tanggal berita',
  `tanggal_berita_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `berita`
INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_berita`, `kategori_berita`, `status_berita`, `penulis_berita`, `gambar_berita`, `tanggal_berita`, `tanggal_berita_update`) VALUES
(2, 'Pssi Akan Gelar Kongres Tahunan Akhir Bulan Februari', '&lt;p&gt;PSSI berencana menggelar Kongres Biasa Tahun 2021 di Jakarta, 27 Februari 2021 mendatang...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita718168.jpeg', 'Jumat, 25 Desember 2020', '2020-12-25 13:15:22'),
(3, 'Eka Ramdani Kembali Ke Persib Dan Putuskan Gantung Sepatu Usai Liga 1 2018', '&lt;p&gt;Liga 1 2018 menjadi panggung terakhir perjalanan karier sepakbola Eka Ramdani...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita466515.jpg', 'Jumat, 25 Desember 2020', '2020-12-25 13:14:44'),
(4, 'Terapkan Prokes, Praliga Akademi Persib U-13 Berjalan Sukses', '&lt;p&gt;Akademi PERSIB Kota Bogor menggelar Praliga Akademi PERSIB U-13...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita919778.jpg', 'Jumat, 25 Desember 2020', '2020-12-25 13:13:48'),
(5, '(25 Desember 2018) Persib Perkenalkan Prabu', '&lt;p&gt;Hari ini&amp;nbsp;dua tahun yang lalu, PERSIB secara resmi memperkenalkan maskot...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita584758.jpg', 'Jumat, 25 Desember 2020', '2020-12-25 13:20:51'),
(6, 'Persib Pernah Bantai Persik 6-1 Di Isl 2009/2010', '&lt;p&gt;PERSIB pernah mengalahkan Persik Kediri dengan skor telak 6-1...&lt;/p&gt;', 'berita liga', 'Diterbitkan', 'Ahmad Zaelani', 'berita911142.jpg', 'Jumat, 25 Desember 2020', '2020-12-29 20:16:27'),
(7, 'Budiman: Aqil Sangat Layak Bersaing Di Timnas', '&lt;p&gt;Asisten pelatih PERSIB&amp;nbsp;Budiman mengaku senang dengan pemanggilan...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita735897.jpg', 'Jumat, 25 Desember 2020', '2020-12-25 13:29:09'),
(8, 'Ukur Performa Pemain, Akademi Persib Gunakan Perangkat Canggih', '&lt;p style=&quot;text-align:justify&quot;&gt;Akademi PERSIB Kota Bandung terus melakukan terobosan...&lt;/p&gt;', 'berita', 'Diterbitkan', 'Ahmad Zaelani', 'berita446039.jpg', 'Jumat, 25 Desember 2020', '2020-12-25 13:47:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_kategori`
--
DROP TABLE IF EXISTS `berita_kategori`;
CREATE TABLE `berita_kategori` (
  `id_kategori` int NOT NULL COMMENT 'id kategori',
  `kategori_berita` varchar(50) NOT NULL COMMENT 'kategori berita'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `berita_kategori`
INSERT INTO `berita_kategori` (`id_kategori`, `kategori_berita`) VALUES
(1, 'berita'),
(2, 'berita liga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_pemain`
--
DROP TABLE IF EXISTS `dokumen_pemain`;
CREATE TABLE `dokumen_pemain` (
  `id_pemain` int NOT NULL COMMENT 'id dokumen pemain',
  `id_user` int NOT NULL COMMENT 'id akun user',
  `dok_kartu_keluarga` varchar(100) DEFAULT NULL COMMENT 'dokumen kk',
  `dok_akte_lahir` varchar(100) DEFAULT NULL COMMENT 'dokumen akte',
  `dok_raport` varchar(100) DEFAULT NULL COMMENT 'dokumen raport'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `dokumen_pemain`
INSERT INTO `dokumen_pemain` (`id_pemain`, `id_user`, `dok_kartu_keluarga`, `dok_akte_lahir`, `dok_raport`) VALUES
(5, 12, NULL, NULL, NULL),
(6, 13, NULL, NULL, NULL),
(7, 14, NULL, NULL, NULL),
(8, 15, NULL, NULL, NULL),
(9, 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_liga`
--
DROP TABLE IF EXISTS `jadwal_liga`;
CREATE TABLE `jadwal_liga` (
  `id_jadwal` int NOT NULL COMMENT 'id jadwal dan skor liga',
  `id_liga` int NOT NULL COMMENT 'id liga',
  `minggu_ke` tinyint NOT NULL COMMENT 'minggu tanding',
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `tanggal` varchar(10) NOT NULL COMMENT 'tanggal pertandingan',
  `jam` varchar(5) NOT NULL COMMENT 'jam mulai',
  `tim_tuan_rumah` tinyint NOT NULL COMMENT 'tuan rumah',
  `tim_tamu` tinyint NOT NULL COMMENT 'tim tamu',
  `skor_tuan_rumah` tinyint NOT NULL DEFAULT '0' COMMENT 'skor tuan rumah',
  `skor_tim_tamu` tinyint NOT NULL DEFAULT '0' COMMENT 'skor tamu',
  `tempat` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `jadwal_liga`
INSERT INTO `jadwal_liga` (`id_jadwal`, `id_liga`, `minggu_ke`, `hari`, `tanggal`, `jam`, `tim_tuan_rumah`, `tim_tamu`, `skor_tuan_rumah`, `skor_tim_tamu`, `tempat`) VALUES
(1, 12, 8, 'Minggu', '04-12-2020', '02:32', 1, 4, 4, 0, 'GBK'),
(2, 12, 2, 'Kamis', '05-12-2020', '07:00', 1, 5, 3, 3, 'GBK'),
(3, 12, 3, 'Jumat', '21-12-2020', '20:00', 5, 4, 0, 0, 'Persita Stadion');

-- --------------------------------------------------------

--
-- Struktur dari tabel `liga`
--
DROP TABLE IF EXISTS `liga`;
CREATE TABLE `liga` (
  `id_liga` int NOT NULL COMMENT 'id liga ',
  `nama_liga` varchar(64) NOT NULL COMMENT 'nama liga sepak bola',
  `tahun_penyelenggaraan` year NOT NULL,
  `nama_penyelenggara` varchar(64) NOT NULL COMMENT 'penyelenggara liga',
  `jumlah_tim` tinyint NOT NULL COMMENT 'jumlah tim peserta',
  `sistem_pertandingan` enum('Sistem Setengah Kompetisi','Sistem Kompetisi Penuh','Sistem Gugur Tunggal','Sistem Gugur Rangkap','Sistem Consulation','Sistem Kombinasi') NOT NULL COMMENT 'sistem pertandingan',
  `logo_liga` varchar(50) DEFAULT NULL COMMENT 'logo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `liga`
INSERT INTO `liga` (`id_liga`, `nama_liga`, `tahun_penyelenggaraan`, `nama_penyelenggara`, `jumlah_tim`, `sistem_pertandingan`, `logo_liga`) VALUES
(12, 'Liga Shopee', '2021', 'Anak Bola Sumsel', 8, 'Sistem Setengah Kompetisi', 'logo_liga_530316.png'),
(13, 'Festival Garuda Food', '2022', 'Garuda Food', 18, 'Sistem Setengah Kompetisi', 'logo_liga_548751.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int NOT NULL COMMENT 'id menu',
  `nama_menu` varchar(30) NOT NULL COMMENT 'nama menu',
  `kategori_menu` enum('single_menu','dropdown_menu','sub_menu') NOT NULL COMMENT 'kategori',
  `link_menu` varchar(100) NOT NULL COMMENT 'link menu',
  `urut` int NOT NULL COMMENT 'urut',
  `parent` int NOT NULL DEFAULT '0' COMMENT 'sub menu parent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `menu`
-- (BAGIAN INI SUDAH DIUPDATE KE LOCALHOST:8000)
INSERT INTO `menu` (`id_menu`, `nama_menu`, `kategori_menu`, `link_menu`, `urut`, `parent`) VALUES
(3, 'Jadwal Pertandingan', 'single_menu', 'http://localhost:8000/semua_jadwal.php', 4, 0),
(4, 'Berita', 'single_menu', 'http://localhost:8000/semua_berita.php', 3, 0),
(5, 'Club', 'single_menu', 'http://localhost:8000/semua_club.php', 5, 0),
(11, 'Profile', 'dropdown_menu', '#', 2, 0),
(12, 'Sejarah', 'sub_menu', 'http://localhost:8000/profile.php?id_pages=1', 1, 11),
(13, 'Visi Misi', 'sub_menu', 'http://localhost:8000/profile.php?id_pages=2', 2, 11),
(14, 'Struktur Organisasi', 'sub_menu', 'http://localhost:8000/profile.php?id_pages=3', 3, 11),
(15, 'Login', 'single_menu', 'http://localhost:8000/login.php', 6, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id_pages` int NOT NULL,
  `judul_pages` varchar(100) NOT NULL,
  `isi_pages` text NOT NULL,
  `penulis_pages` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `pages`
INSERT INTO `pages` (`id_pages`, `judul_pages`, `isi_pages`, `penulis_pages`) VALUES
(1, 'Sejarah', '&lt;p&gt;Lorem ipsum dolor sit amet...&lt;/p&gt;', 'Ahmad Zaelani'),
(2, 'Visi Misi', '&lt;p&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Lorem ipsum dolor sit amet...&lt;/span&gt;&lt;/p&gt;', 'Ahmad Zaelani'),
(3, 'Struktur Organisasi', '&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-size:14px&quot;&gt;Lorem ipsum dolor sit amet...&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', 'Ahmad Zaelani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--
DROP TABLE IF EXISTS `pengaturan`;
CREATE TABLE `pengaturan` (
  `id_pengaturan` tinyint(1) NOT NULL COMMENT 'id',
  `nama_situs` varchar(75) NOT NULL COMMENT 'nama situs',
  `nama_aplikasi` varchar(75) NOT NULL COMMENT 'nama aplikasi',
  `nama_pengelola` varchar(75) NOT NULL COMMENT 'nama admin situs',
  `deskripsi_situs` text NOT NULL,
  `alamat_situs` text NOT NULL COMMENT 'alamat rumah situs',
  `status_situs` enum('Open','Maintenance') NOT NULL COMMENT 'buka tutup situs',
  `logo` varchar(25) NOT NULL COMMENT 'logo situs/aplikasi',
  `favicon` varchar(25) NOT NULL COMMENT 'icon situs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `pengaturan`
INSERT INTO `pengaturan` (`id_pengaturan`, `nama_situs`, `nama_aplikasi`, `nama_pengelola`, `deskripsi_situs`, `alamat_situs`, `status_situs`, `logo`, `favicon`) VALUES
(1, 'PSSI Kab. Pangandaran', 'e-Soccer', 'Ahmad Zaelani', 'PSSI DPC Kabupaten Pangandaran', 'Jln. Raya parigi No 32 Tlp. (0265) 322 1495', 'Open', 'logo.png', 'icon.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_liga`
--
DROP TABLE IF EXISTS `peserta_liga`;
CREATE TABLE `peserta_liga` (
  `id_peserta` int NOT NULL COMMENT 'id peserta liga',
  `id_liga` int NOT NULL COMMENT 'id liga yang terdaftar',
  `id_club` tinyint NOT NULL COMMENT 'id club'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `peserta_liga`
INSERT INTO `peserta_liga` (`id_peserta`, `id_liga`, `id_club`) VALUES
(10, 12, 1),
(11, 12, 5),
(12, 12, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_admclub`
--
DROP TABLE IF EXISTS `profile_admclub`;
CREATE TABLE `profile_admclub` (
  `id_admclub` int NOT NULL COMMENT 'id admin club',
  `id_user` int NOT NULL COMMENT 'id akun',
  `id_club` tinyint NOT NULL DEFAULT '0' COMMENT 'id club admin',
  `nama_admclub` varchar(64) NOT NULL COMMENT 'nama admin club',
  `tempat_lahir` varchar(50) DEFAULT NULL COMMENT 'tempat lahir',
  `tgl_lahir` varchar(10) DEFAULT NULL COMMENT 'tgl lahir',
  `alamat` text COMMENT 'alamat admin club',
  `kontak_admin` varchar(13) NOT NULL COMMENT 'nomor kontak admin club'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `profile_admclub`
INSERT INTO `profile_admclub` (`id_admclub`, `id_user`, `id_club`, `nama_admclub`, `tempat_lahir`, `tgl_lahir`, `alamat`, `kontak_admin`) VALUES
(1, 4, 1, 'Ridwan Kamil', 'ciamis', '21-01-1994', 'Dusun/Jln. babakan RT 01 RW 04 Desa parigi Kec. parigi Kab.pangandaran', '082127787598');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_club`
--
DROP TABLE IF EXISTS `profile_club`;
CREATE TABLE `profile_club` (
  `id_club` int NOT NULL COMMENT 'id club',
  `nama_club` varchar(50) NOT NULL COMMENT 'nama club',
  `alamat_club` text NOT NULL COMMENT 'alamat club',
  `kontak_club` varchar(13) NOT NULL COMMENT 'kontak club',
  `logo_club` varchar(25) NOT NULL COMMENT 'logo club'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `profile_club`
INSERT INTO `profile_club` (`id_club`, `nama_club`, `alamat_club`, `kontak_club`, `logo_club`) VALUES
(1, 'Persib', 'Jln. Dago Bandung No 32', '412077044', 'club293247.png'),
(4, 'Persita', 'Jln. Karawaci No 7 Tangerang Selatan', '432077044', 'club867887.png'),
(5, 'PSM Makasar', 'Jln. Makasar Timur No 32', '442077044', 'club516617.png'),
(6, 'PSS Sleman', 'Selaman Yogyakarta No. 32', '45678', 'club430137.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_pemain`
--
DROP TABLE IF EXISTS `profile_pemain`;
CREATE TABLE `profile_pemain` (
  `id_pemain` int NOT NULL COMMENT 'id pemain',
  `id_user` int NOT NULL COMMENT 'id user akun',
  `id_club` tinyint NOT NULL DEFAULT '0' COMMENT 'id club pemain',
  `no_punggung_pemain` varchar(2) DEFAULT NULL COMMENT 'no punggung pemain',
  `posisi_pemain` enum('Goal Keeper','Bek Tengah','Bek Sayap','Gelandang','Gelandang Bertahan','Gelandang Tengah','Gelandang Serang','Gelandang Sayap','Penyerang') DEFAULT NULL COMMENT 'posisi pemain',
  `nama_pemain` varchar(64) NOT NULL COMMENT 'nama pemain',
  `nik` varchar(16) NOT NULL COMMENT 'nik pemain',
  `no_kk` varchar(16) DEFAULT NULL COMMENT 'no kk pemain',
  `tempat_lahir` varchar(50) DEFAULT NULL COMMENT 'tempat lahir ',
  `tgl_lahir` varchar(10) DEFAULT NULL COMMENT 'tgl lahir ',
  `tinggi_badan` varchar(5) DEFAULT NULL COMMENT 'tinggi badan',
  `berat_badan` varchar(5) DEFAULT NULL COMMENT 'berat badan',
  `golongan_darah` enum('','A','B','AB','O') NOT NULL COMMENT 'golongan darah',
  `alamat` text COMMENT 'alamat lengkap',
  `kontak_pemain` varchar(13) NOT NULL COMMENT 'kontak pemain'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `profile_pemain`
INSERT INTO `profile_pemain` (`id_pemain`, `id_user`, `id_club`, `no_punggung_pemain`, `posisi_pemain`, `nama_pemain`, `nik`, `no_kk`, `tempat_lahir`, `tgl_lahir`, `tinggi_badan`, `berat_badan`, `golongan_darah`, `alamat`, `kontak_pemain`) VALUES
(6, 12, 1, '09', 'Gelandang Sayap', 'Palovi Hidayat', '3207243007980007', '3207243007980007', 'Jakarta', '20-11-2003', '165', '65', 'AB', 'Dusun/Jln. babakan RT 01 RW 04 Desa parigi Kec. parigi Kab.pangandaran', '087870693200'),
(7, 13, 5, '1', 'Goal Keeper', 'Toni Handika', '3207243007930006', '3207243007930006', 'bandung', '13-02-2002', '165', '65', 'AB', 'Dusun/Jln. babakan RT 01 RW 04 Desa parigi Kec. parigi Kab.pangandaran', '087870693200'),
(8, 14, 5, '2', 'Bek Tengah', 'Yayat Hardi', '3207243007930005', '3207243007930005', 'Ciamis', '28-01-2000', '165', '65', 'AB', 'Dusun/Jln. babakan RT 01 RW 04 Desa parigi Kec. parigi Kab.pangandaran', '087870693200'),
(9, 15, 1, '10', 'Penyerang', 'Jajat Sudrajat', '', '3207243007930008', 'Bandung', '02-03-2000', '165', '64', 'AB', 'Dusun/Jln. Bandung RT 09 RW 09 Desa Kacapiring Kec. Bandung Kab.Bandung', '087870693200'),
(10, 16, 1, '11', 'Gelandang Sayap', 'Windu Sarada', '3207243007930009', '3207243007930009', 'Bandung', '28-01-2000', '170', '68', 'AB', 'Dusun/Jln. Bandung RT 09 RW 09 Desa Kacapiring Kec. Bandung Kab.Bandung', '087870693200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_petugas`
--
DROP TABLE IF EXISTS `profile_petugas`;
CREATE TABLE `profile_petugas` (
  `id_petugas` int NOT NULL COMMENT 'id petugas',
  `id_user` int NOT NULL COMMENT 'id akun user',
  `nama_petugas` varchar(64) NOT NULL COMMENT 'nama petugas',
  `tempat_lahir` varchar(50) DEFAULT NULL COMMENT 'tempat lahir',
  `tgl_lahir` varchar(10) DEFAULT NULL COMMENT 'tanggal lahir',
  `alamat` text COMMENT 'alamat lengkap',
  `kontak_petugas` varchar(13) NOT NULL COMMENT 'kontak petugas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `profile_petugas`
INSERT INTO `profile_petugas` (`id_petugas`, `id_user`, `nama_petugas`, `tempat_lahir`, `tgl_lahir`, `alamat`, `kontak_petugas`) VALUES
(2, 3, 'Yohan Yogaswara', 'Ciamis', '27-08-1993', 'Dusun/Jln. babakan RT 01 RW 04 Desa parigi Kec. parigi Kab.pangandaran', '082127787593');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int NOT NULL COMMENT 'id role',
  `name` varchar(64) NOT NULL COMMENT 'nama role',
  `weight` int NOT NULL DEFAULT '0' COMMENT 'hak akses pengguna'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `role`
INSERT INTO `role` (`rid`, `name`, `weight`) VALUES
(1, 'anonymous user', 0),
(2, 'pemain', 1),
(3, 'adminclub', 2),
(4, 'petugas', 3),
(5, 'administrator', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int NOT NULL COMMENT 'id of user',
  `nik` varchar(16) NOT NULL COMMENT 'username login',
  `password` varchar(255) NOT NULL COMMENT 'password',
  `role` varchar(15) NOT NULL COMMENT 'hak akses',
  `status` tinyint NOT NULL DEFAULT '0',
  `nama_user` varchar(64) NOT NULL,
  `foto_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data untuk tabel `users`
INSERT INTO `users` (`id_user`, `nik`, `password`, `role`, `status`, `nama_user`, `foto_user`) VALUES
(2, '3207243007930001', '$2y$10$JDmShiXLMi3RnUYfHHTQxOZhXp3EUmE0Hrub3W4wgzhav.qXXD6ma', 'administrator', 1, 'Ahmad Zaelani', 'user529313.jpg'),
(3, '3207243007930002', '$2y$10$gjTevavj.uiAGikxTNXOC.CYSzQGPYWDVJsdKPfwrXdpKpBgOBa4m', 'petugas', 1, 'Yohan Yogaswara', '271231.jpeg'),
(4, '3207243007930003', '$2y$10$DjvQ66biptM6fcwIQN38z.GVPz6WPItZJ9vMtXNMKUmskc8dql.A2', 'adminclub', 1, 'Ridwan Kamil', 'user371858.jpg'),
(12, '3207243007980007', '$2y$10$g65feq9TE/fEumKjTh37FOlmkRyW8YgIwG2nrclVo2vPzhIFV3.kK', 'pemain', 1, 'Palovi Hidayat', '968408.jpeg'),
(13, '3207243007930006', '$2y$10$nsjWV6Ez3yuzFvEnUIGCqO4MmD6sBPVuknnVQBCOvU7rKslzH79ju', 'pemain', 1, 'Toni Handika', '448050.jpeg'),
(14, '3207243007930005', '$2y$10$wMJ/Kbf7UYJRnOysMPVQlu.nPKXYQpu4VMH5T5KA/R7FKdFwujRy.', 'pemain', 1, 'Yayat Hardi', '632286.jpeg'),
(15, '3207243007930008', '$2y$10$OdEy0vzTFjR7DPP4s648h.zC9viF8e.boaoDA7759ZEYNl0wrTRX.', 'pemain', 1, 'Jajat Sudrajat', 'pemain809376.jpg'),
(16, '3207243007930009', '$2y$10$pGcHMNenMD2.0GSD2NNcF.ECbOQO5EmG2Cb0l1Qqj1OGJULzqNxKe', 'pemain', 1, 'Windu Sarada', 'pemain236374.jpg');

--
-- Indeks & Auto Increment
--

ALTER TABLE `berita` ADD PRIMARY KEY (`id_berita`);
ALTER TABLE `berita_kategori` ADD PRIMARY KEY (`id_kategori`);
ALTER TABLE `dokumen_pemain` ADD PRIMARY KEY (`id_pemain`);
ALTER TABLE `jadwal_liga` ADD PRIMARY KEY (`id_jadwal`);
ALTER TABLE `liga` ADD PRIMARY KEY (`id_liga`);
ALTER TABLE `menu` ADD PRIMARY KEY (`id_menu`);
ALTER TABLE `pages` ADD PRIMARY KEY (`id_pages`);
ALTER TABLE `pengaturan` ADD PRIMARY KEY (`id_pengaturan`);
ALTER TABLE `peserta_liga` ADD PRIMARY KEY (`id_peserta`);
ALTER TABLE `profile_admclub` ADD PRIMARY KEY (`id_admclub`);
ALTER TABLE `profile_club` ADD PRIMARY KEY (`id_club`);
ALTER TABLE `profile_pemain` ADD PRIMARY KEY (`id_pemain`);
ALTER TABLE `profile_petugas` ADD PRIMARY KEY (`id_petugas`);
ALTER TABLE `role` ADD PRIMARY KEY (`rid`);
ALTER TABLE `users` ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `nik` (`nik`);

ALTER TABLE `berita` MODIFY `id_berita` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
ALTER TABLE `berita_kategori` MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `dokumen_pemain` MODIFY `id_pemain` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
ALTER TABLE `jadwal_liga` MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `liga` MODIFY `id_liga` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
ALTER TABLE `menu` MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
ALTER TABLE `pages` MODIFY `id_pages` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `peserta_liga` MODIFY `id_peserta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `profile_admclub` MODIFY `id_admclub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `profile_club` MODIFY `id_club` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `profile_pemain` MODIFY `id_pemain` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `profile_petugas` MODIFY `id_petugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `role` MODIFY `rid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
ALTER TABLE `users` MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

-- FOOTER: COMMIT & ENABLE CHECKS
COMMIT;
SET FOREIGN_KEY_CHECKS = 1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;