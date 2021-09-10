module.exports = {
  proxy: 'localhost:3000',
  port: 3001,
  ui: { port: 3002 },
  files: ['app/assets', 'app/views'],
  open: false,
  snippetOptions: {
    rule: {
      // Add to head as turbo replaces body.
      match: /<\/head>/i,
      fn: (snippet, match) => snippet + match
    }
  }
};
