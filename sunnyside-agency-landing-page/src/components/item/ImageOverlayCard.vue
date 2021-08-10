<template>
  <v-col
    v-bind:class="`theme-${theme}`"
    class="d-flex h-100 justify-center align-end text-center"
  >
    <v-col cols="7">
      <h3>{{title}}</h3>
      <p>{{description}}</p>
    </v-col>
  </v-col>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: true,
    },
    theme: {
      type: String,
      required: true,
    },
  },

  setup(props, context) {
    return {
    }
  },
}
</script>

<style lang="scss">
.theme-green, .theme-blue {
  h3 {
    font-size: 1.4rem;
  }

  p {
    font-size: 14px;
  }
}

.theme-green {
  p {
    color: hsl(167, 40%, 24%);
  }
}

.theme-blue {
  p {
    color: hsl(198, 62%, 26%);
  }
}
</style>
