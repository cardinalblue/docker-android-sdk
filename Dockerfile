FROM circleci/android:api-24-alpha
RUN sudo apt-get install build-essential make ruby-dev curl zlib1g-dev liblzma-dev \
    && sudo gem install fastlane -v 2.48.0 \
    && sudo gem install bundler -v 1.14.6 \
    && sudo gem install google_drive -v 2.1.3
CMD 'sh'