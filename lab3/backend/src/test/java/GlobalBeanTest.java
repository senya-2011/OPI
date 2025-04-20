package com.example.AreaChecker.controller;

import com.example.AreaChecker.model.dao.ShotDao;
import com.example.AreaChecker.model.dao.UserDao;
import com.example.AreaChecker.model.entity.Shot;
import com.example.AreaChecker.model.entity.User;
import com.example.AreaChecker.util.AuthUtil;
import com.example.AreaChecker.controller.GlobalBean;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class GlobalBeanTest {

    @Mock
    private ShotDao shotDao;

    @Mock
    private UserDao userDao;

    @InjectMocks
    private GlobalBean globalBean;

    private User testUser;
    private final String testUsername = "testUser";
    private final String testPassword = "password123";
    private final String hashedPassword = AuthUtil.hashPassword(testPassword);

    public GlobalBeanTest() throws Exception {
    }

    @BeforeEach
    void setUp() {
        testUser = new User();
        testUser.setUsername(testUsername);
        testUser.setPassword(hashedPassword);
    }

    @Test
    void testAddUser() {
        globalBean.addUser(testUser);
        verify(userDao, times(1)).addUser(testUser);
    }

    @Test
    void testGetUsers() {
        ArrayList<String> users = new ArrayList<>(Arrays.asList("user1", "user2"));
        when(userDao.getUsers()).thenReturn(users);

        ArrayList<String> result = globalBean.getUsers();

        assertEquals(2, result.size());
        assertTrue(result.contains("user1"));
        assertTrue(result.contains("user2"));
    }

    @Test
    void testAddShot() {
        Shot shot = new Shot();
        when(userDao.getUserByUsername(testUsername)).thenReturn(testUser);

        globalBean.addShot(shot, testUsername);

        assertEquals(testUser, shot.getUser());
        verify(shotDao, times(1)).addShot(shot);
    }

    @Test
    void testGetShots() {
        ArrayList<Shot> shots = new ArrayList<>();
        when(userDao.getUserByUsername(testUsername)).thenReturn(testUser);
        when(shotDao.getShots(testUser)).thenReturn(shots);

        ArrayList<Shot> result = globalBean.getShots(testUsername);
        assertEquals(shots, result);
    }

    @Test
    void testDeleteShots() {
        when(userDao.getUserByUsername(testUsername)).thenReturn(testUser);
        globalBean.deleteShots(testUsername);
        verify(shotDao, times(1)).deleteShots(testUser);
    }

    @Test
    void testIsRegisteredTrue() {
        when(userDao.getUserByUsername(testUsername)).thenReturn(testUser);

        boolean result = globalBean.isRegistered(testUsername, testPassword);
        assertTrue(result);
    }

    @Test
    void testIsRegisteredUserNotFound() {
        when(userDao.getUserByUsername(testUsername)).thenReturn(null);

        boolean result = globalBean.isRegistered(testUsername, testPassword);
        assertFalse(result);
    }

    @Test
    void testAddNullUser() {
        assertDoesNotThrow(() -> globalBean.addUser(null));
        verify(userDao, times(1)).addUser(null);
    }

    @Test
    void testIsRegisteredFalseWrongPassword() {
        when(userDao.getUserByUsername(testUsername)).thenReturn(testUser);

        boolean result = globalBean.isRegistered(testUsername, "wrongPassword");
        assertFalse(result);
    }

    @Test
    void testIsUsernameExistsTrue() {
        when(userDao.getUsers()).thenReturn(new ArrayList<>(Collections.singletonList(testUsername)));

        assertTrue(globalBean.isUsernameExists(testUsername));
    }

    @Test
    void testIsUsernameExistsFalse() {
        when(userDao.getUsers()).thenReturn(new ArrayList<>());

        assertFalse(globalBean.isUsernameExists("anotherUser"));
    }
}
