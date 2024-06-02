<template>
  <NavigationBar />
  <div class="max-w-[1300px] w-full mx-auto px-4">
    <div class="text-[32px] font-bold text-center pt-[80px]">
      <h1 class="text-[#FF5C00]">GAME BETTER.</h1>
      <h1 class="text-white">START LIVING BEAUTIFULLY WITH OUR TEAM</h1>
    </div>
    <div class="my-[100px] rounded-[20px] overflow-hidden">
      <iframe
        width="100%"
        height="500"
        src="https://www.youtube.com/embed/h4pmzQI7ikI?si=L1u6p2UANLYpoB4Q"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen
      ></iframe>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  setup() {
    return {};
  },
});
</script>

<style scoped></style>
