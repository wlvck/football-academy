<template>
  <div class="bg-[black] py-[120px]">
    <div class="max-w-[1300px] w-full mx-auto px-4">
      <nuxt-icon name="03" filled class="text-[92px]" />
      <div class="grid md:grid-cols-3 grid-cols-2 text-[white]">
        <div>
          <nuxt-link to="/about" class="mb-4 block">About</nuxt-link>
          <nuxt-link to="/about" class="mb-4 block">Our story</nuxt-link>
          <nuxt-link to="/products" class="mb-4 block">Shop</nuxt-link>
          <nuxt-link to="/academy" class="block">Academy</nuxt-link>
        </div>
        <div>
          <div>
            <p class="mb-4">Terms and Policy</p>
            <p>All Terms and Policies</p>
          </div>
        </div>
        <div class="mt-[40px] md:mt-[0]">
          <div class="flex items-center gap-3">
            <nuxt-icon
              name="04"
              filled
              class="text-[45px] cursor-pointer"
              @click.prevent="
                openUrl(
                  'https://www.youtube.com/channel/UCSNFxxwpBU2U9jDV2DKmZ3Q'
                )
              "
            />
            <nuxt-icon name="05" filled class="text-[45px] cursor-pointer]" />
            <nuxt-icon name="06" filled class="text-[45px] cursor-pointer" />
            <nuxt-icon name="07" filled class="text-[45px] cursor-pointer" />
            <nuxt-icon
              name="08"
              filled
              class="text-[45px] cursor-pointer"
              @click.prevent="openUrl('https://www.instagram.com/la.unitedkz/')"
            />
            <nuxt-icon name="09" filled class="text-[45px] cursor-pointer" />
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
    const openUrl = (url: string) => {
      window.open(url, '_blank');
    };
    return { openUrl };
  },
});
</script>
