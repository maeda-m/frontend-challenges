<template>
  <v-avatar
    size="64px"
  >
    <v-img
      v-bind:src="`./images/${avatar}`"
    >
    </v-img>
  </v-avatar>
  <div class="theme-person">
    <p>{{comment}}</p>

    <strong>{{name}}</strong>
    <small>{{title}}</small>
  </div>
</template>

<script>
export default {
  props: {
    comment: {
      type: String,
      required: true,
    },
    name: {
      type: String,
      required: true,
    },
    title: {
      type: String,
      required: true,
    },
    avatar: {
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
.theme-person {
  p {
    color: hsl(213, 9%, 39%);
    margin-top: 50px;
    margin-bottom: 40px;
    font-size: 15px;
    line-height: 2;
  }

  strong {
    display: block;
  }

  small {
    font-size: 12px;
    font-weight: normal;
    font-family: 'Barlow';
  }
}
</style>
