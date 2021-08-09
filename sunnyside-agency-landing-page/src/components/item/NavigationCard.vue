<template>
  <v-col
    v-bind:class="`theme-${theme}`"
    class="d-flex h-100 justify-center align-center"
  >
    <v-col cols="8">
      <h2>{{title}}</h2>
      <p>{{description}}</p>
      
      <v-col class="pl-3">
        <a href="#">
          <span class="accent-border">LEARN MORE</span>
        </a>
      </v-col>
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
    }
  },

  setup(props, context) {
    return {
    }
  }
}
</script>

<style lang="scss">
.border-bottom-with-rounded {
  content: "";
  display: block;
  position: relative;
  z-index: -1;
  top: -10px;
  left: -10px;
  border-radius: 10px;
  height: 8px;
  width: 120px;
}

.border-bottom-with-rounded:not(:hover) {
  opacity: .4;
}

.theme-red, .theme-yellow {
  p {
    color: hsl(232, 10%, 55%);
  }
}

.theme-red {
  .accent-border {
    &:after {
      @extend .border-bottom-with-rounded;
      background-color: hsl(7, 99%, 70%);
    }
  }
}

.theme-yellow {
  .accent-border {
    &:after {
      @extend .border-bottom-with-rounded;
      background-color: hsl(51, 100%, 49%);
    }
  }
}
</style>
