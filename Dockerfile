FROM circleci/android:api-24-alpha
RUN sudo apt-get install build-essential make ruby-dev curl \
    && sudo gem install fastlane -NV
CMD 'sh'