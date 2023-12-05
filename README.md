## Productstacker data modeling

- `User` - The model responsible for a given entity who might add and share supplment stacks.
- `Stack` - A collection of products a user can share.
- `Product` - Get's shared inside a Stack. Has richer data like price, description, title, etc.
- `Brand` - The brand of the product. One brand per product.
