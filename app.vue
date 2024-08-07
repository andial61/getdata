<template>
  <div>

    {{ judul }}

    <AppHeader />

    <NuxtPage />

    <AppFooter />

  </div>
</template>

<script>

</script>


<script setup>


useHead({
  title: "LATIHAN1",
  link: [
    {
      rel: "stylesheet",
      href: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    }, //css bootstrap 5
    {
      src: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js",
    }
  ]
})
</script>