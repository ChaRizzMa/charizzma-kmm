package com.example.charizzma

class Greeting {
    private val platform: Platform = getPlatform()

    fun greet(): String {
        return "Hello, ${platform.name}! This is the start of RizzTracker"
    }
}