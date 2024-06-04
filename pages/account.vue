<template>
  <div>
    <NavigationBar />
    <div
      class="max-w-[1300px] w-full mx-auto p-[30px] rounded-[12px] bg-[#292929]"
    >
      <div class="flex flex-col md:flex-row gap-5 items-start">
        <div>
          <img src="@/assets/images/account-image.png" alt="" />
        </div>
        <div class="flex-[1_1_auto] text-[white]">
          <h1 class="text-[36px] font-bold">{{ userName }} #17</h1>
          <h2 class="text-[#FF6B00]">winger</h2>
          <h3>08.05.2009</h3>
        </div>
        <div>
          <h1 class="text-[#FF6B00] text-[36px] font-bold">78</h1>
        </div>
      </div>
      <div
        class="grid md:max-w-[calc(100%-80px)] w-full md:ml-auto gap-7 md:grid-cols-5 sm:grid-cols-3 grid-cols-2"
      >
        <div class="flex flex-col gap-1 items-center justify-center">
          <nuxt-icon name="15" filled class="text-[50px]" />
          <h2 class="text-white my-0">10</h2>
          <p class="text-[14px] text-[white] opacity-50">Matches</p>
        </div>
        <div class="flex flex-col gap-1 items-center justify-center">
          <nuxt-icon name="16" filled class="text-[50px]" />
          <h2 class="text-white my-0">4</h2>
          <p class="text-[14px] text-[white] opacity-50">MVP</p>
        </div>
        <div class="flex flex-col gap-1 items-center justify-center">
          <nuxt-icon name="17" filled class="text-[50px]" />
          <h2 class="text-white my-0">7</h2>
          <p class="text-[14px] text-[white] opacity-50">Wins</p>
        </div>
        <div class="flex flex-col gap-1 items-center justify-center">
          <nuxt-icon name="19" filled class="text-[50px]" />
          <h2 class="text-white my-0">5</h2>
          <p class="text-[14px] text-[white] opacity-50">Goals</p>
        </div>
        <div class="flex flex-col gap-1 items-center justify-center">
          <nuxt-icon name="15" filled class="text-[50px]" />
          <h2 class="text-white my-0">3</h2>
          <p class="text-[14px] text-[white] opacity-50">Assists</p>
        </div>
      </div>
      <div
        class="grid sm:grid-cols-2 gap-x-[50px] md:max-w-[calc(100%-100px)] w-full md:ml-auto mt-[50px]"
      >
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Minutes on the field</span> <span>580</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Goals </span> <span>4</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Shots </span> <span>10</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Offsides </span> <span>1</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Yellow cards </span> <span>1</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Red cards </span> <span>0</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Hat-tricks </span> <span>0</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Acurate passes </span> <span>0</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Shots on target </span> <span>7</span>
        </div>
        <div
          class="flex justify-between items-center text-[white] font-semibold text-[20px]"
        >
          <span>Foles </span> <span>7</span>
        </div>
      </div>
      <div class="mt-[100px]">
        <BarChart v-bind="barChartProps" />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import { BarChart, useBarChart } from 'vue-chart-3';
import { Chart, registerables } from 'chart.js';
Chart.register(...registerables);
export default defineComponent({
  components: { BarChart },
  setup() {
    const data = ref([30, 40, 60, 70, 5]);

    const chartData = computed(() => ({
      labels: ['Real Madrid', 'Arsenal', 'M.United', 'M.City', 'Bercelona'],
      datasets: [
        {
          data: data.value,
          borderColor: '#CBAA00',
          tension: 0,
          backgroundColor: [
            '#77CEFF',
            '#0079AF',
            '#123E6B',
            '#97B0C4',
            '#A5C8ED',
          ],
        },
      ],
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: false,
        },
      },
    }));

    onMounted(async () => {
      if (!localStorage['accessToken']) {
        await navigateTo({ name: 'auth-login' });
      }
    });

    const { barChartProps, barChartRef } = useBarChart({
      chartData,
    });

    const userName = computed(() => {
      return `${localStorage['firstName']} ${localStorage['lastName']}`;
    });

    return { barChartProps, userName };
  },
});
</script>
