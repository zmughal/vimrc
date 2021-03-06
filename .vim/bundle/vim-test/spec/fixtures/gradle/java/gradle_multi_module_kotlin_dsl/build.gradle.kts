plugins {
    java
}

group "org.example"
version "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation("junit:junit:4.12")
}
tasks.test {
    useJUnit()

    maxHeapSize = "1G"
}
