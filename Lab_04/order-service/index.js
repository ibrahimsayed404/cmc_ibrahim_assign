const express = require('express');
const axios = require('axios');
const app = express();
app.use(express.json());
const orders = [];
app.post('/orders', async (req, res) => {
  const { productId, quantity } = req.body;
  const { data } = await axios.get('http://product-service:3001/products');
  const p = data.find(x => x.id === productId);
  if (!p) return res.status(404).json({ error: 'Product not found' });
  const order = { id: orders.length + 1, productId, quantity, total: p.price * quantity };
  orders.push(order);
  res.status(201).json(order);
});
app.get('/orders', (req, res) => res.json(orders));
app.listen(3002, () => console.log('order-service on 3002'));
