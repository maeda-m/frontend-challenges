<template>
  <div class="status-attribute">
    <v-col><h3>{{text}}</h3></v-col>
    <v-col><label class="font-lexend-deca">{{name}}</label></v-col>
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
  label {
    color: hsla(0, 0%, 100%, 0.6);
  }
}
</style>
