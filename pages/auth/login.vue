<template>
  <div
    class="min-h-screen relative overflow-hidden md:bg-[url('~/assets/images/auth-bg.png')] grid md:grid-cols-2 px-4"
  >
    <div class="hidden md:block"></div>
    <div class="flex items-center justify-center">
      <div
        class="bg-[white] rounded-[20px] p-[30px] z-[2] relative max-w-[566px] w-full"
      >
        <h1 class="text-center text-[28px] mb-3 font-semibold">Log in</h1>
        <v-text-field
          v-model="formData.login"
          label="Email"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          v-model="formData.password"
          label="Password"
          variant="outlined"
          color="#ff6600"
          type="password"
        ></v-text-field>
        <v-btn
          class="w-full !bg-[#ff6600] text-white py-4"
          height="auto"
          :loading="loading"
          @click.prevent="submit"
          >Countine</v-btn
        >
        <div class="text-center text-[15px] font-medium mt-4">
          <span>Don't have an account? </span>
          <nuxt-link class="text-[blue]" to="/auth/register">Sign up</nuxt-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import { useToast } from 'vue-toastification';
import axios from 'axios';
export default defineComponent({
  setup() {
    definePageMeta({
      layout: 'auth',
    });
    const loading = ref(false);
    const toast = useToast();
    const formData = ref({
      login: '',
      password: '',
    });
    const submit = async () => {
      try {
        loading.value = true;
        const response: { accessToken: string } = await axios.post(
          'http://localhost:2003/auth/login',
          formData.value
        );
        localStorage.setItem('accessToken', response.accessToken);
        toast.success('Sucessfully logged in');
        await navigateTo('/');
      } catch (error: any) {
        console.log(error);
        toast.error(error.response.data.message);
      } finally {
        loading.value = false;
      }
    };
    return { formData, loading, submit };
  },
});
</script>

<style scoped></style>
