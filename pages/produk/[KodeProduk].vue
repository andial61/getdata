<template>
  <div>
    <h3>ID Produk: {{ $route.params.KodeProduk }}</h3>
    <br>
    <div v-if="gambar">
      <img :src="gambar" alt="Product Image" />
    </div>
    <div v-else>
      <p>Gambar tidak tersedia</p>
    </div>
    <h1>{{ nama }}</h1>
    <h5>Rp {{ harga }}</h5>
    <p>Kategori: {{ kategori }}</p>
    <p>Deskripsi: {{ deskripsi }}</p>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      nama: " ",
      harga: " ",
      kategori: " ",
      deskripsi: " ",
      gambar: ' ',
    };
  },
  async mounted() {
    await this.getData();
  },
  methods: {
    async getData() {
      try {
        const response = await axios.get('http://localhost/data_webolshop/produk_detail.php', {
          params: {
            kode_produk: this.$route.params.KodeProduk
          }
        });
        const data = response.data[0];

        if (data) {
          this.nama = data.nama; // Assuming 'nama_produk' is the correct field
          this.harga = data.harga;
          this.kategori = data.kategori;
          this.deskripsi = data.deskripsi;
          this.gambar = data.gambar;
        } else {
          console.error('Produk tidak ditemukan');
        }
      } catch (error) {
        console.error('Terjadi kesalahan saat mengambil data:', error);
      }
    },
    getImageUrl(image) {
      return `/img/${image}`;
    }
  }
};
</script>

<style scoped>
/* Add your styles here */
</style>
