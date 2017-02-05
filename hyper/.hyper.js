module.exports = {
  config: {
    fontSize: 12,
    fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    padding: '12px 14px',
    bell: false,
    termCSS: `
      x-screen x-row {
        font-variant-ligatures: initial;
      }
    `,
  },

  plugins: [
    'hyperterm-atom-dark',
    'hyper-tabs-enhanced',
    'hyper-blink'
  ],
};
