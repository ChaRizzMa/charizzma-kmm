package com.example.charizzma

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform