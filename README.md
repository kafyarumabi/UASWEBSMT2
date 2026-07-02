LAPOARAN UAS TECHWEB 
Abiarta Kafyarum Permana | 2510120002 | Sistem Informasi

Alur singkat sistem 
Aplikasi review film merupakan aplikasi berbasis web yang memugkinkan 
pengguna untuk menambahkan, melihat, dan menghapus ulasan film. Sistem 
terdiri dari dua bagian untuk menambahkan dan menghapus ulasan film. Sisem 
terdiri dari dari dua bagian utama yaitu frontend yang dibangun menggunakan 
HTML,CSS, dan JAVASCRIPT, serta backend yang dibangun menggunakan 
Express.js dengan PostgreSQL sebagai database. 
Alur kerja sistem dimulai ketika pengguna membuka halaman utama aplikasi. 
Frontend akan mengirimkan permintaan ke backend untuk mengambil data review 
yang tersimpan di database SQL. Data yang diterima kemudian ditampilkan dalam 
bentuk daftar review pada halaman web. 
Ketika pengguna ingin menambahkan review baru, pengguna mengisi formulir 
yang terdiri dari judul film, rating, dan isi review film. Setelah tombol tambah 
review ditekan, frontend mengirimkan permintaan delete ke backend berdasarkan 
id review yang dipilih kemudian memproses permintaan tersebut dan menyimpan 
ke database. 
Dengan demikian seluruh proses pertukaran data dilakukan menggunakan REST 
API yang dibangun menggunakan express.js.

Endpoint REST API 
Backend menyediakan beberapa endpoint dari REST API yang digunakan oleh 
frontend  untuk melakukan operasi terhadapt data review film.

Struktur tabel data 
CREATE TABLE reviews ( 
id SERIAL PRIMARY KEY, 
title VARCHAR(255) NOT NULL, 
\ 
rating INTEGER NOT NULL, 
review TEXT NOT NULL, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
); 
Id digunakan sebagai primary key dengan tipe data SERIAL  
Title untuk mengisi judul film dengan tipe data VARCHAR 
Rating untuk memberikan penilaian dengan tipe data INTEGER 
Review untuk memberikan ulasan dengan tipe data TEXT 
Created_at untuk keterangan waktu review dengan tipe data TIMESTAMP.

**LINK VIDIO DEMO**
https://youtu.be/jqhYATbUQIA?si=XZg1rCJQp_JN77Y9

**ISI LAPORAN LEBIH LENGKAP DAN SCREENSHOT**
https://drive.google.com/drive/folders/1KUjhOvUmDWMkoMBC_vu9McQfpxj_29CS?usp=drive_link
