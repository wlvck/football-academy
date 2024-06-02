<template>
  <div class="max-w-[1300px] w-full mx-auto px-4">
    <div class="flex items-center justify-between">
      <nuxt-icon
        name="01"
        filled
        class="text-[90px] cursor-pointer"
        @click.prevent="$router.push('/')"
      />
      <div
        class="text-[17px] text-[white] font-medium hidden md:flex items-center"
      >
        <nuxt-link to="/academy" class="inline-block px-3">Academy</nuxt-link>
        <nuxt-link to="/about" class="inline-block px-3">About</nuxt-link>
        <nuxt-link to="/products" class="inline-block px-3">Products</nuxt-link>
        <nuxt-link to="/community" class="inline-block px-3"
          >Community</nuxt-link
        >
        <nuxt-link to="/company" class="inline-block px-3">Company</nuxt-link>
      </div>
      <div class="hidden md:flex items-center">
        <button
          class="border-[1px] border-solid text-[17px] border-[#606060] text-[white] rounded-[8px] px-3 py-2"
          @click.prevent="$router.push({ name: 'auth-login' })"
        >
          Log In
        </button>
        <button
          class="text-[black] text-[17px] bg-[#D9D9D9] px-3 py-2 ml-3 rounded-[8px]"
          @click.prevent="$router.push({ name: 'auth-register' })"
        >
          Sign Up
        </button>
      </div>
      <nuxt-icon
        name="02"
        filled
        class="block md:hidden text-[30px] cursor-pointer"
        @click.prevent="showMenu = true"
      />
    </div>
  </div>
  <transition
    enter-active-class="animate__animated animate__fadeIn"
    leave-active-class="animate__animated animate__fadeOut"
  >
    <div
      v-if="showMenu"
      class="bg-[#040203] z-[100] fixed top-0 left-0 w-full min-h-screen h-full px-4 py-10"
    >
      <div class="flex items-end justify-end mb-4">
        <img
          src="@/assets/images/close.png"
          alt=""
          class="max-h-[24px] cursor-pointer"
          @click.prevent="showMenu = false"
        />
      </div>
      <div
        class="text-[17px] text-[white] font-medium flex flex-col items-start gap-5 mb-10"
      >
        <span class="inline-block px-3" @click.prevent="onClick('academy')"
          >Academy</span
        >
        <span class="inline-block px-3" @click.prevent="onClick('about')"
          >About</span
        >
        <span class="inline-block px-3" @click.prevent="onClick('products')"
          >Products</span
        >
        <span class="inline-block px-3" @click.prevent="onClick('community')"
          >Community</span
        >
        <span class="inline-block px-3" @click.prevent="onClick('company')"
          >Company</span
        >
      </div>
      <div class="grid grid-cols-2 gap-5">
        <button
          class="border-[1px] border-solid text-[17px] border-[#606060] text-[white] rounded-[8px] px-3 py-2"
          @click.prevent="onClick('auth-login')"
        >
          Log In
        </button>
        <button
          class="text-[black] text-[17px] bg-[#D9D9D9] px-3 py-2 rounded-[8px]"
          @click.prevent="onClick('auth-register')"
        >
          Sign Up
        </button>
      </div>
    </div>
  </transition>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
export default defineComponent({
  setup() {
    const showMenu = ref(false);

    const onClick = async (name: string) => {
      showMenu.value = false;
      await navigateTo({ name });
    };
    return { showMenu, onClick };
  },
});
</script>
