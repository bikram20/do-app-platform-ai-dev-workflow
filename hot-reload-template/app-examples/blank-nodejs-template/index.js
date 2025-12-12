const express = require('express');
const dayjs = require('dayjs');
const app = express();
const PORT = process.env.PORT || 8080;

app.use(express.json());

app.get('/health', (req, res) => {
  res.json({
    status: 'ok',
    service: 'blank-nodejs-template',
    timestamp: new Date().toISOString(),
    hot_reload: 'Dependency change verified!',
    formatted_time: dayjs().format('dddd, MMMM D, YYYY h:mm A')
  });
});

app.get('/', (req, res) => {
  res.json({
    message: 'Hello from Blank Node.js Template!',
    framework: 'Express.js',
    version: '1.0.0'
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
