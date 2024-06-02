<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<style>
* {
  font-family: 'Font1', sans-serif;
}
body {
  background: #040203;
}
@font-face {
  font-family: 'Font1';
  src: url('./assets/fonts/Medium.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'Font2';
  src: url('./assets/fonts/Zeppelin.otf') format('opentype');
}
.zeppelin-font {
  font-family: 'Font2' !important;
}
</style>
