package com.bhaskar;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloWorldServletTest {

    @Test
    public void testGetMessage() {
        HelloWorldServlet servlet = new HelloWorldServlet();
        String message = servlet.getMessage();
        assertEquals("Hello, World!", message);
    }
}

