// Importing the Express.js module
const express = require('express');
const path = require('path');

// Initialize the Express app
const app = express();

// Serve static files from the 'app' directory (like index.html)
app.use(express.static(path.join(__dirname, '')));

// Set the port to 80
const PORT = 80;

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
