package ua.com.coffee.service.impl;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import ua.com.coffee.model.order.Order;
import ua.com.coffee.service.interfaces.SenderService;
import ua.com.coffee.tools.MockService;

import java.util.Properties;

import static org.junit.Assert.assertNotNull;
import static ua.com.coffee.tools.MockModel.getOrderEntity;

public class SenderServiceImplTest {

    private static SenderService senderService;

    @BeforeClass
    public static void setUp() {
        System.out.println("\nTesting class \"RoleServiceImpl\" - START.\n");

        senderService = MockService.getSenderService();
    }

    @AfterClass
    public static void tearDown() {
        System.out.println("Testing class \"RoleServiceImpl\" - FINISH.\n");
    }

    @Test
    public void getPropertiesTest() throws Exception {
        System.out.println("-> getProperties() - ");

        Properties properties = senderService.getSSLProperties();
        assertNotNull(properties);

        properties = senderService.getTLSProperties();
        assertNotNull(properties);

        System.out.println("OK!");
    }

    @Test
    public void noExceptionOfVoidMethodTest() throws Exception {
        System.out.print("-> noExceptionOfVoidMethod() - ");

        Order orderEntity = getOrderEntity();
        senderService.send(orderEntity);

        System.out.println("OK!");
    }
}