FROM gitpod/workspace-full

USER root

# Install dependencies required by tileserver-gl
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libxi6 \
    libgconf-2-4 \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

USER gitpod
