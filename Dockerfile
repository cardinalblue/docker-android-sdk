FROM jacekmarchwicki/android:ubuntu-16-04-java7-8
RUN export ANDROID_HOME="$(pwd)/.android" &&
    mkdir -p "${ANDROID_HOME}/licenses" &&
    echo -e "\n8933bad161af4178b1185d1a37fbf41ea5269c55" > "${ANDROID_HOME}/licenses/android-sdk-license" &&
    echo -e "\n84831b9409646a918e30573bab4c9c91346d8abd" > "${ANDROID_HOME}/licenses/android-sdk-preview-license" &&
    echo -e "\nd975f751698a77b662f1254ddbeed3901e976f5a" > "${ANDROID_HOME}/licenses/intel-android-extra-license"
RUN sudo apt-get install build-essential make ruby-dev curl \
    && sudo gem install fastlane -NV
CMD 'sh'