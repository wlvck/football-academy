<template>
  <div
    class="min-h-screen relative overflow-hidden bg-[url('~/assets/images/auth-bg.png')] grid grid-cols-2"
  >
    <div></div>
    <div class="flex items-center">
      <div
        class="bg-[white] rounded-[20px] p-[30px] z-[2] relative max-w-[566px] w-full"
      >
        <h1 class="text-center text-[28px] mb-3 font-semibold">Log in</h1>
        <v-text-field
          label="Email"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          label="Password"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-btn class="w-full !bg-[#ff6600] text-white py-4" height="auto"
          >Countine</v-btn
        >
      </div>
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
