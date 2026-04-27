const express = require('express');
const app = express();
app.use(express.json());
const products = [{ id: 1, name: 'Sample Product', price: 100 }];
app.get('/products', (req, res) => res.json(products));
app.listen(3001, () => console.log('product-service on 3001'));
