let path = require("path");

module.exports = {
  mode: "production",
  entry: "./dist/main.js",
  output: {
    filename: "bundle.js",
    path: path.resolve(__dirname, "public")
  }
};
