<template>
  <v-app class="app-container">
    <router-view />
  </v-app>
</template>

<style scoped>
.app-container {
  position: absolute;  /* Ensure the app takes up the whole screen */
  top: 0;
  left: 0;
  width: 100vw;  /* Full viewport width */
  height: 100vh;  /* Full viewport height */
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
