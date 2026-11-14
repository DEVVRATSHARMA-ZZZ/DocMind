package com.springBoot.docMind.dto;
public record LoginResponse(
        String accessToken,
        UserDto user
) {
}

