From node:16-alpine as builder
Workdir /app
Copy package.json .
Run npm install
Copy . .
Run npm run build

From nginx
Copy --from=builder /app/build /usr/share/nginx/html

#test