<template>
  <div
    class="min-h-screen relative overflow-hidden md:bg-[url('~/assets/images/auth-bg.png')] grid md:grid-cols-2 px-4"
  >
    <div class="hidden md:block"></div>
    <div class="flex items-center justify-center">
      <div
        class="bg-[white] rounded-[20px] p-[30px] z-[2] relative max-w-[566px] w-full"
      >
        <h1 class="text-center text-[28px] mb-3 font-semibold">Registration</h1>
        <v-text-field
          v-model="formData.firstName"
          label="First Name"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          v-model="formData.lastName"
          label="Last Name"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          v-model="formData.email"
          label="Email"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          v-model="formData.password"
          label="Password"
          variant="outlined"
          type="password"
          color="#ff6600"
        ></v-text-field>
        <v-text-field
          v-model="formData.passwordConfirmation"
          label="Password Confirmation"
          variant="outlined"
          type="password"
          color="#ff6600"
        ></v-text-field>
        <v-btn
          class="w-full !bg-[#ff6600] text-white py-4"
          height="auto"
          :loading="loading"
          @click.prevent="submit"
          >Countine</v-btn
        >
        <div class="text-center text-[15px] font-medium mt-4">
          <span>Already have an account? </span>
          <nuxt-link class="text-[blue]" to="/auth/login">Login now</nuxt-link>
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
    const toast = useToast();
    const loading = ref(false);
    const formData = ref({
      firstName: '',
      lastName: '',
      email: '',
      password: '',
      passwordConfirmation: '',
    });
    const submit = async () => {
      try {
        loading.value = true;
        const response = await axios.post(
          'http://localhost:2003/auth',
          formData.value
        );
        localStorage.setItem('accessToken', response.data.accessToken);
        localStorage.setItem('firstName', formData.value.firstName);
        localStorage.setItem('lastName', formData.value.lastName);
        toast.success('Sucessfully registered');
        await navigateTo({ name: 'account' });
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
