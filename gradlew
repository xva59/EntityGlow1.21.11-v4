#!/usr/bin/env bash
set -e

GRADLE_VERSION="8.8"
INSTALL_DIR="${HOME}/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}"
GRADLE_BIN="${INSTALL_DIR}/bin/gradle"

if [ ! -f "${GRADLE_BIN}" ]; then
    echo "[gradlew] Gradle ${GRADLE_VERSION} wird heruntergeladen..."
    mkdir -p "${INSTALL_DIR}"
    curl -fsSL \
        "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
        -o "/tmp/gradle-${GRADLE_VERSION}.zip"
    unzip -q "/tmp/gradle-${GRADLE_VERSION}.zip" -d "/tmp/gradle-extract/"
    cp -r "/tmp/gradle-extract/gradle-${GRADLE_VERSION}/." "${INSTALL_DIR}/"
    chmod +x "${GRADLE_BIN}"
    rm -rf "/tmp/gradle-${GRADLE_VERSION}.zip" "/tmp/gradle-extract/"
    echo "[gradlew] Gradle ${GRADLE_VERSION} bereit."
fi

exec "${GRADLE_BIN}" "$@"
