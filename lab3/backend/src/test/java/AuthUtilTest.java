package com.example.AreaChecker.util;

import com.example.AreaChecker.controller.GlobalBean;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.NoSuchAlgorithmException;

import static org.junit.jupiter.api.Assertions.*;

class AuthUtilTest {

    @Test
    void testHashPassword_emptyString() throws NoSuchAlgorithmException {
        String actual = AuthUtil.hashPassword("");
        assertEquals(
            "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
            actual,
            "Hash of empty string should match"
        );
    }

    @Test
    void testHashPassword_hello() throws NoSuchAlgorithmException {
        String actual = AuthUtil.hashPassword("hello");
        assertEquals(
            "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824",
            actual,
            "Hash of 'hello' should match"
        );
    }

    @Test
    void testHashPassword_password() throws NoSuchAlgorithmException {
        String actual = AuthUtil.hashPassword("password");
        assertEquals(
            "5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8",
            actual,
            "Hash of 'password' should match"
        );
    }
}
