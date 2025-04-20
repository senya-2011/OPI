package com.example.AreaChecker.util;

import com.example.AreaChecker.model.entity.Shot;
import org.junit.jupiter.api.Test;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class JSONParserTest {

    @Test
    void testToJSON_singleShot() {
        Shot shot = new Shot();
        shot.setId(42);  // Integer ID
        shot.setX(1.5);
        shot.setY(-2.5);
        shot.setR(3.0);
        shot.setScriptTime(123);
        Timestamp ts = Timestamp.valueOf("2025-04-18 12:34:56");
        shot.setCurrentTime(ts);
        shot.setStatus(true);

        String json = JSONParser.toJSON(shot);
        assertNotNull(json);
        assertTrue(json.contains("\"id\": \"42\""));
        assertTrue(json.contains("\"X\": \"1.5\""));
        assertTrue(json.contains("\"Y\": \"-2.5\""));
        assertTrue(json.contains("\"R\": \"3.0\""));
        assertTrue(json.contains("\"script_time\": \"123\""));
        assertTrue(json.contains("\"date\": \"" + ts.toString() + "\""));
        assertTrue(json.contains("\"status\": \"true\""));
    }

    @Test
    void testToJSON_emptyList() {
        ArrayList<Shot> list = new ArrayList<>();
        String json = JSONParser.toJSON(list);
        assertEquals("[\n]", json);
    }

    @Test
    void testToJSON_multipleShots() {
        Shot s1 = new Shot();
        s1.setId(1);  // Integer ID
        s1.setX(0);
        s1.setY(0);
        s1.setR(1);
        s1.setScriptTime(1);
        s1.setCurrentTime(new Timestamp(0));
        s1.setStatus(false);

        Shot s2 = new Shot();
        s2.setId(2);  // Integer ID
        s2.setX(2);
        s2.setY(2);
        s2.setR(2);
        s2.setScriptTime(2);
        s2.setCurrentTime(new Timestamp(0));
        s2.setStatus(true);

        ArrayList<Shot> list = new ArrayList<>(Arrays.asList(s1, s2));
        String json = JSONParser.toJSON(list);
        // Should start with [ and have two objects separated by comma
        assertTrue(json.startsWith("[\n"));
        assertTrue(json.contains("},\n    {"));
        assertTrue(json.endsWith("\n]"));
        assertTrue(json.contains("\"id\": \"1\""));
        assertTrue(json.contains("\"id\": \"2\""));
    }

    @Test
    void testUsersToJSON_emptyList() {
        ArrayList<String> users = new ArrayList<>();
        String json = JSONParser.usersToJSON(users);
        assertEquals("[\n]", json);
    }

    @Test
    void testUsersToJSON_multiple() {
        ArrayList<String> users = new ArrayList<>(Arrays.asList("alice", "bob"));
        String json = JSONParser.usersToJSON(users);
        assertTrue(json.startsWith("[\n"));
        assertTrue(json.contains("alice,\n"));
        assertTrue(json.contains("bob\n"));
        assertTrue(json.endsWith("]"));
    }
}
