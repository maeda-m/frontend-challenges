<template>
  <div class="status-attribute mx-auto">
    <v-col><h3>{{text}}</h3></v-col>
    <v-col class="mt-n5"><small class="font-lexend-deca">{{name}}</small></v-col>
  </div>
</template>

<script>
export default {
  name: 'StatusAttribute',

  data() {
    return {
    }
  },

  props: {
    name: String,
    text: String,
  }
}
</script>

<style lang="scss">
.status-attribute {
  small {
    color: hsla(0, 0%, 100%, 0.6);
  }
}
</style>
