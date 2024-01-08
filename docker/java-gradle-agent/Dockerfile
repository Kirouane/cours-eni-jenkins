# Use the jenkins/agent base image
FROM jenkins/agent

# Set environment variables for Gradle installation
ENV GRADLE_VERSION 8.5
ENV GRADLE_HOME /opt/gradle
ENV PATH $PATH:$GRADLE_HOME/bin

# Switch to root to install packages
USER root

# Install dependencies and Gradle
RUN apt-get update && apt-get install -y unzip \
    && curl -L https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle-${GRADLE_VERSION}-bin.zip \
    && unzip gradle-${GRADLE_VERSION}-bin.zip -d /opt \
    && ln -s /opt/gradle-${GRADLE_VERSION} /opt/gradle \
    && rm gradle-${GRADLE_VERSION}-bin.zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch back to the jenkins user
USER jenkins
