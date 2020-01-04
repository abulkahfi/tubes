-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Jan 2020 pada 22.05
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12105409_tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerja`
--

CREATE TABLE `kerja` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `thn_mulai` varchar(20) NOT NULL,
  `thn_keluar` varchar(20) NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `desk_pekerjaan` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kerja`
--

INSERT INTO `kerja` (`id`, `username`, `thn_mulai`, `thn_keluar`, `nama_pekerjaan`, `desk_pekerjaan`, `kategori`) VALUES
(1, '60900117030', 'April 2018', 'September 2018', 'Tour Guide', 'Tour Guide atau pemandu tur/pemandu wisata adalah yang bertugas memberikan bantuan, informasi dan interpretasi warisan budaya, sejarah serta kontemporer kepada pengunjung/wisatawan/peserta tur di tempat-tempat bersejarah, museum, keagamaan, pendidikan dan', 'Pariwisata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `tentang_instansi` varchar(1500) NOT NULL,
  `username` varchar(255) NOT NULL,
  `thn_masuk` int(11) NOT NULL,
  `thn_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `ket`, `instansi`, `tentang_instansi`, `username`, `thn_masuk`, `thn_keluar`) VALUES
(1, 'SD', 'SDN 167 Baru 1 Sinjai Selatan', 'Sekolahku sangat bersih dan memiliki fasilitas yang lengkap. Letaknya sangat jauh dari pusat kota. Tepatnya di tengah perkebunan tebulah sekolah kami berdiri. Meski demikian, kebersihan dan keindahan selalu kami jaga.', '60900117030', 2006, 2011),
(2, 'SMP', 'SMP IMMIM PUTRA MAKASSAR', 'Dibuat pada tahun 1975 oleh H. Fadli Luran, seorang pengusaha asal Enrekang yang memiliki perhatian besar dalam pembuatan generasi Islam yang berakhlak mulia, berwawasan luas, berbadan sehat; serta mempersatukan umat Islam dari segala furu \'dan khilafiah. Pesantren ini disebut Pesantren Modern Pendidikan Al-Qur\'an IMMIM Putra karna dasar dari pembinaannya berbasis Qur\'ani dan juga menerapkan konsep pendidikan Islami modern yang harus membahas perkembangan teknologi & perkembangan zaman. Pesantren ini sangat menekankan pada pembinaan Al-Qur\'an, bahasa Inggris-Arab, ilmu agama, dan ilmu pengetahuan umum. Sejak pertama kali didirikan, Pesantren IMMIM terus meningkat yang mana semakin meningkat hingga masa-masa keemasan pada akhirnya mencapai 90-an. ', '60900117030', 2011, 2014),
(3, 'SMA', 'MA IMMIM PUTRA MAKASSAR', 'Dibuat pada tahun 1975 oleh H. Fadli Luran, seorang pengusaha asal Enrekang yang memiliki perhatian besar dalam pembuatan generasi Islam yang berakhlak mulia, berwawasan luas, berbadan sehat; serta mempersatukan umat Islam dari segala furu \'dan khilafiah. Pesantren ini disebut Pesantren Modern Pendidikan Al-Qur\'an IMMIM Putra karna dasar dari pembinaannya berbasis Qur\'ani dan juga menerapkan konsep pendidikan Islami modern yang harus membahas perkembangan teknologi & perkembangan zaman. Pesantren ini sangat menekankan pada pembinaan Al-Qur\'an, bahasa Inggris-Arab, ilmu agama, dan ilmu pengetahuan umum. Sejak pertama kali didirikan, Pesantren IMMIM terus meningkat yang mana semakin meningkat hingga masa-masa keemasan pada akhirnya mencapai 90-an. ', '60900117030', 2014, 2017);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_skill` varchar(50) NOT NULL,
  `persentase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skill`
--

INSERT INTO `skill` (`id`, `username`, `nama_skill`, `persentase`) VALUES
(1, '60900117030', 'Tidur', 80),
(2, '60900117030', 'Main Game', 30),
(3, '60900117030', 'Membaca', 50),
(4, '60900117030', 'Menulis', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi_diri` varchar(1500) NOT NULL,
  `umur` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `foto`, `deskripsi_diri`, `umur`, `email`, `no_telp`, `alamat`, `status`) VALUES
(1, '60900117030', '60900117030', 'Muhammad Ashabul Kahfi', 'kahfi.jpg', 'Halo, Saya bernama Muhammad Ashabul Kahfi dan biasa dipanggil Abul. Saya merupakan seorang individu yang terbiasa bersosialisasi, bertemu serta berkerja sama dengan orang baru itu hal biasa bagi saya. Hal menarik dari diri saya adalah sangat dikenal sebagai seorang pendengar yang baik untuk setiap orang yang ada di sekeliling saya.\r\n', 20, 'ash.kahfi20@gmail.com ', '+62 823 9510 4475', 'Jl. Meranti 1D No. 7a', 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kerja`
--
ALTER TABLE `kerja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pend` (`username`);

--
-- Indeks untuk tabel `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kerja`
--
ALTER TABLE `kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pend` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
