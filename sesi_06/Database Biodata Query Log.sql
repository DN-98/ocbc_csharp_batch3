-- pemahaman tentang foreign key dan primary key

-- 1. database siakad
-- 2. tabel biodata_diri
--     - id biodata_diri (primary key) > type data integer / big integer 
--         > auto increment (jika ingin menggunakan integer) > sifat nya primary key ***
--     - kode biodata_diri (nik, nim) > sifat bukan primary key ~~~ > untuk tambahan validasi > tidak ada double data
--     - nama lengkap
--     - jenis kelamin
--     - umur
--     - id jurusan > foreign key

-- 3. tabel mata_kuliah
--     - id mata_kuliah
--     - nama mata_kuliah
--     - jam kuliah
--     - id biodata_diri > id biodata dari tabel biodata_diri > foreign key > terdapat reference tabel > tabel biodata_diri

-- 4. tabel jurusan
--     - id jurusan
--     - nama jurusan