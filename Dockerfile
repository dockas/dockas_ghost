FROM mhart/alpine-node:4

# Add ghost files
ADD ./src /home/ghost

# Override config file
ADD ./config.js /home/ghost/

# Set ghost as workdir
WORKDIR /home/ghost

# Run npm install
RUN npm install --production

# Set node env as production
ENV NODE_ENV production

# Main command
CMD ["node", "index.js"]
