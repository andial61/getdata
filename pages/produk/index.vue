produk.vue

<template>
  <div id="product" class="produk">
    <h2 class="produk-heading animated"><strong>Products</strong></h2>
    <div class="produk-container">
      <div v-for="item in products" :key="item.kode_produk" class="produk-item animated">
        <NuxtLink :to="'/produk/' + item.kode_produk">
          <img :src="item.gambar" alt="ProductImages">
          <div class="produk-info">
            <h3>{{ item.nama }}</h3>
            <p>Rp {{ item.harga }}</p>
          </div>
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data() {
    return {
      products: [],
    }
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      try {
        let res = await axios.get("http://localhost/data_webolshop/produk.php");
        console.log(res.data.produk);
        this.products = res.data.produk;
      } catch (error) {
        console.error("Terjadi kesalahan saat mengambil data produk:", error);
      }
    }
  }
}
</script>

<style>
.produk {
  background-color: white;
  padding: 2rem;
}

.produk-heading {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 1.5rem;
}

.produk-heading.animated {
  opacity: 0;
  animation: fadeInUp 1s ease both;
}

.produk p {
  font-size: 1rem;
  color: #1A120B;
  margin: 0;
}

.produk h3 {
  text-align: left;
  font-size: 2rem;
}

.produk-container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem;
}

.produk-item {
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  margin: 0;
  width: 100%;
  max-width: 300px;
  opacity: 0;
  animation: fadeInUp 0.5s ease forwards;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.produk-item:hover {
  transform: scale(1.05); 
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.produk-item img {
  width: 100%;
  height: auto;
  display: block;
}

.produk-info {
  padding: 1rem;
  text-align: left;
}

.produk-info h3 {
  font-size: 1.2rem;
  color: #1A120B;
  margin-bottom: 0.5rem;
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

@media (max-width: 1024px) {
  .produk-container {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 768px) {
  .produk-container {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 480px) {
  .produk-container {
    grid-template-columns: 1fr;
  }
}
</style>