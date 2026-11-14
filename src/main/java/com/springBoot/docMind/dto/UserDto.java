package com.springBoot.docMind.dto;


import com.springBoot.docMind.entity.Role;

public record UserDto(
        Long id,
        String username,
        String email,
        Role role
) {
}