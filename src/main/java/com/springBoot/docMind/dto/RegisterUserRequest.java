package com.springBoot.docMind.dto;

public record RegisterUserRequest(
        String username,
        String email,
        String password
) {
}