package com.springBoot.docMind.dto;

public record LoginRequest(
        String username,
        String password
) {
}