module.exports = {
  config: {
    fontFamily: 'Hack, "Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    padding: '12px 14px',
    bell: false,
    hyperTabs: {
      border: true,
    },
    termCSS: `
      * {
        -webkit-font-feature-settings: "liga" on, "calt" on, "dlig" on !important;
        text-rendering: optimizeLegibility !important;
      }

      x-screen x-row {
        font-variant-ligatures: initial;
      }
    `
  },

  plugins: [
    'hyperblue',
    'hyper-tabs-enhanced',
    'hyper-blink',
    'hypercwd'
  ]
};
