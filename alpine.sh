echo "https://dl-4.alpinelinux.org/alpine/v3.9/main" >> /etc/apk/repositories && \
echo "https://dl-4.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories

apk update && \
    apk add build-base \
    libxml2-dev \
    libxslt-dev \
    curl unzip libexif udev chromium chromium-chromedriver wait4ports xvfb xorg-server dbus ttf-freefont mesa-dri-swrast \
    && rm -f /var/cache/apk/*