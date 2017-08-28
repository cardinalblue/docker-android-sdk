FROM circleci/android:api-25-alpha
ENV PATH=${ANDROID_HOME}/build-tools/25.0.3:${PATH}
ADD Gemfile* ./
RUN sudo apt-get install build-essential make ruby-dev curl zlib1g-dev liblzma-dev \
    && sudo gem install bundler -v 1.14.6 \
    && bundle install \
    && sudo rm Gemfile*
CMD 'sh'