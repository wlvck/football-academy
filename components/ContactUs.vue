<template>
  <div class="max-w-[600px] mx-auto w-full px-4">
    <h1 class="text-white text-center text-[22px] md:text-[40px] mb-[40px]">
      Contact with us
    </h1>
    <div class="w-full bg-white p-5 rounded-[25px]">
      <v-text-field
        v-model="formData.email"
        label="Email"
        variant="outlined"
        color="#ff6600"
      ></v-text-field>
      <v-text-field
        v-model="formData.message"
        label="Message"
        variant="outlined"
        color="#ff6600"
      ></v-text-field>
      <v-btn
        :loading="loading"
        class="w-full !bg-[#ff6600] text-white py-4"
        height="auto"
        @click.prevent="notify"
        >Send</v-btn
      >
    </div>
  </div>
</template>

<script lang="ts">
import { useToast } from 'vue-toastification';
export default defineComponent({
  setup() {
    const loading = ref(false);
    const formData = reactive({ email: '', message: '' });
    const notify = async () => {
      try {
        loading.value = true;
        const token = '7155169622:AAH9SZLv1o13zjFOHeSLoWiiwpdSLq-0UMc';
        const chat_id = '6711515572';
        const message = `Email: ${formData.email}. Message: ${formData.message}`;
        const url = `https://api.telegram.org/bot${token}/sendMessage?chat_id=${chat_id}&parse_mode=html&text=${message}`;
        fetch(url);
        formData.email = formData.message = '';
        const toast = useToast();
        toast.success('Message sent successfully');
      } catch (error) {
      } finally {
        loading.value = false;
      }
    };
    return { loading, formData, notify };
  },
});
</script>
