-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2020 pada 15.36
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kamus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamus`
--

CREATE TABLE `tb_kamus` (
  `id_kamus` int(11) NOT NULL,
  `istilah_kamus` varchar(225) NOT NULL,
  `arti_kamus` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kamus`
--

INSERT INTO `tb_kamus` (`id_kamus`, `istilah_kamus`, `arti_kamus`) VALUES
(1, 'Akhirat', 'Akhirat. dipakai untuk mengistilahkan kehidupan alam baka (kekal) setelah kematian atau sesudah dunia berakhir.'),
(2, 'Ba', ' salah satu huruf dalam alfabet Arab'),
(3, 'Dosa', 'Dosa (dari bahasa Sanskerta: dosa) adalah suatu istilah yang terutama digunakan dalam konteks agama untuk menjelaskan tindakan yang melanggar norma atau aturan yang telah ditetapkan Tuhan atau Wahyu Illahi.'),
(4, 'Fatah', 'Fathah adalah harakat yang berbentuk layaknya garis horizontal kecil ( ? ) yang berada di atas suatu huruf Arab yang melambangkan fonem /a/. Secara harfiah, fathah itu sendiri berarti membuka, layaknya membuka mulut saat mengucapkan fonem /a/.'),
(5, 'Haji', 'Haji (\"ziarah\") adalah ziarah Islam tahunan ke Mekkah, kota suci umat Islam, dan kewajiban wajib bagi umat Islam yang harus dilakukan setidaknya sekali seumur hidup mereka oleh semua orang Muslim dewasa yang secara fisik dan finansial mampu melakukan perjalanan, dan dapat mendukung keluarga mereka selama ketidakhadiran mereka'),
(6, 'Ijtihad', 'Ijtihad adalah sebuah usaha yang sungguh-sungguh, yang sebenarnya bisa dilaksanakan oleh siapa saja yang sudah berusaha mencari ilmu untuk memutuskan suatu perkara yang tidak dibahas dalam Al Quran maupun hadis dengan syarat menggunakan akal sehat dan pertimbangan matang. Namun, pada perkembangan selanjutnya diputuskan bahwa ijtihad sebaiknya hanya dilakukan para ahli agama Islam.'),
(7, 'Ijmak', 'Ijmak atau Ijma\' adalah kesepakatan para ulama dalam menetapkan suatu hukum hukum dalam agama berdasarkan Al-Qur\'an dan Hadis dalam suatu perkara yang terjadi.'),
(8, 'Pahala', 'Pahala (dari bahasa Sanskerta phala, \"buah\") berarti hadiah yang diperoleh karena kelakuan baik.'),
(9, 'Wakaf', 'Wakaf dari sudut bahasa adalah pemberhentian pengucapan. Sementara itu, dari sudut istilah tajwid, wakaf adalah penghentian bacaan sejenak dengan memutuskan suara di akhir perkataan untuk bernapas dengan niat ingin menyambungkan kembali bacaan'),
(10, 'Zakat', 'Zakat (Zakah) dalam segi istilah adalah harta tertentu yang wajib dikeluarkan oleh orang yang beragama Islam dan diberikan kepada golongan yang berhak menerimanya (fakir miskin dan sebagainya). Zakat dari segi bahasa berarti \'bersih\', \'suci\', \'subur\', \'berkat\' dan \'berkembang\'. Menurut ketentuan yang telah ditetapkan oleh syariat Islam. Zakat merupakan rukun keempat dari rukun Islam.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kamus`
--
ALTER TABLE `tb_kamus`
  ADD PRIMARY KEY (`id_kamus`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kamus`
--
ALTER TABLE `tb_kamus`
  MODIFY `id_kamus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
