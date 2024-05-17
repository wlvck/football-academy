<template>
  <div class="bg-[black] py-[120px]">
    <div class="max-w-[1300px] w-full mx-auto px-4">
      <nuxt-icon name="03" filled class="text-[92px]" />
      <div class="grid grid-cols-3 text-[white]">
        <div>
          <p class="mb-4">About</p>
          <p class="mb-4">Our story</p>
          <p class="mb-4">Shop</p>
          <p>Academy</p>
        </div>
        <div>
          <div>
            <p class="mb-4">Terms and Policy</p>
            <p>All Terms and Policies</p>
          </div>
        </div>
        <div>
          <div class="flex items-center gap-3">
            <nuxt-icon name="04" filled class="text-[45px]" />
            <nuxt-icon name="05" filled class="text-[45px]" />
            <nuxt-icon name="06" filled class="text-[45px]" />
            <nuxt-icon name="07" filled class="text-[45px]" />
            <nuxt-icon name="08" filled class="text-[45px]" />
            <nuxt-icon name="09" filled class="text-[45px]" />
          </div>
        </div>
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
