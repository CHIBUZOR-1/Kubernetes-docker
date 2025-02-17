FROM node:22.13.1 as frontend-build

WORKDIR /app

# Install frontend dependencies
COPY client/package*.json ./client/
RUN cd client && npm install

# Set environment variable for Vite
ARG VITE_API_URL
ENV VITE_API_URL=${VITE_API_URL}

# Copy frontend source code and build
COPY client ./client
RUN cd client && npm run build

# Stage 2: Set up the backend
FROM node:22.13.1

WORKDIR /app

# Install backend dependencies
COPY server/package*.json ./server/
RUN cd server && npm install

# Copy backend source code
COPY server ./server

# Copy frontend build to backend public directory
COPY --from=frontend-build /app/client/dist ./client/dist

# Set environment variables
ENV NODE_ENV=production

# Expose the backend port
EXPOSE 5500

# Start the backend server
CMD ["node", "server/index.js"]