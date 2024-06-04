export default defineNuxtRouteMiddleware(async (to) => {
  if (
    (to.name === 'community' || to.name === 'account') &&
    !localStorage['accessToken']
  ) {
    return await navigateTo({ name: 'auth-login' });
  }
});
