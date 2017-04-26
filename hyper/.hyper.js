module.exports = {
  config: {
    fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    padding: '12px 14px',
    bell: false,
    shell: '/usr/local/bin/fish',
    termCSS: `
      * {
        -webkit-font-feature-settings: "liga" on, "calt" on, "dlig" on !important;
        text-rendering: optimizeLegibility !important;
      }

      x-screen x-row {
        font-variant-ligatures: initial;
      }
    `,
    css: `.splitpane_divider { background-color: #1F2125 !important; }`,
  },

  plugins: [
    'hyperterm-atom-dark',
    'hyper-tabs-enhanced',
    'hyper-blink',
    'hypercwd'
  ],
};
