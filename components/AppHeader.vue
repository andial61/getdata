<template>
  <div>

      <div class="p-5 bg-primary text-white text-center">
          <h1>My First Bootstrap 5 Page</h1>
          <p>Resize this responsive page to see the effect!</p>
          <img src="/img/gambar.png" alt="" width="150px">
      </div>


      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
          <div class="container-fluid">
              <ul class="navbar-nav">
                  <li class="nav-item">
                      <NuxtLink class="nav-link " to="/">Beranda</NuxtLink>
                  </li>
                  <li class="nav-item">
                      <NuxtLink class="nav-link" to="/profil">Profil</NuxtLink>
                  </li>
                  <li class="nav-item">
                      <NuxtLink class="nav-link" to="/kontak">Kontak</NuxtLink>
                  </li>
                  <li class="nav-item">
                      <NuxtLink class="nav-link" to="/daftar">Daftar</NuxtLink>
                  </li>
                  <li class="nav-item">
                      <NuxtLink class="nav-link" to="/produk">Produk</NuxtLink>
                  </li>
              
              </ul>
          </div>
      </nav>

  </div>


</template>

<script>
export default {

}
</script>

<style></style>