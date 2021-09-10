module.exports = {
  proxy: {
    target: "localhost:3000",
    proxyReq: [
      // Authenticity token form submissions.
      (proxyReq) => proxyReq.setHeader('X-Forwarded-Host', 'localhost:3001')
    ],
  },
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
