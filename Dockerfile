FROM circleci/android:api-24-alpha
RUN sudo apt-get install build-essential make ruby-dev curl \
    && sudo gem install fastlane -NV -v 2.48.0 \
    && sudo gem install bundler -N -v 1.14.6 \
    && sudo gem install google_drive -N -v 2.1.3
CMD 'sh'