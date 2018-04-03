package ua.com.coffee.exception;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public class ExceptionTest {

    @BeforeClass
    public static void setUp() {
        System.out.println("\nTesting package \"Exception\" - START.\n");
    }

    @AfterClass
    public static void tearDown() {
        System.out.println("Testing package \"Exception\" - FINISH.\n");
    }

    @Test
    public void DuplicateExceptionTest() throws Exception {
        System.out.print("-> DuplicateException() - ");

        checkException(new DuplicateException(), "");

        String message = "MESSAGE";
        DuplicateException ex = new DuplicateException(message);
        checkException(ex, message);

        System.out.println("OK!");
    }

    @Ignore
    public static void checkException(Exception ex, String message) {
        assertNotNull(ex);
        if (!message.isEmpty()) {
            assertEquals(ex.getMessage(), message);
        }
    }
}
