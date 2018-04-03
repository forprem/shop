package ua.com.coffee.controller.manager;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;
import ua.com.coffee.tools.MockController;

import static ua.com.coffee.tools.MockModel.ID;
import static ua.com.coffee.tools.ModelAndViews.checkModelAndView;

public class ManagerUsersControllerTest {

    private static ManagerUsersController managerUsersController;

    @BeforeClass
    public static void setUp() {
        System.out.println("\nTesting class \"CategoryServiceImpl\" - START.\n");

        managerUsersController = MockController.getManagerUsersController();
    }

    @AfterClass
    public static void tearDown() {
        System.out.println("Testing class \"CategoryServiceImpl\" - FINISH.\n");
    }

    @Test
    public void viewAllPersonnelTest() throws Exception {
        System.out.print("-> viewAllPersonnel() - ");

        ModelAndView modelAndView = managerUsersController.viewAllPersonnel();
        String[] keys = { "users", "admin_role", "manager_role" };
        String viewName = "user/manager/all";
        checkModelAndView(modelAndView, viewName, keys);

        System.out.println("OK!");
    }

    @Test
    public void viewUserTest() throws Exception {
        System.out.print("-> viewUser() - ");

        ModelAndView modelAndView = managerUsersController.viewUser(ID);
        String[] keys = { "user", "admin_role", "manager_role" };
        String viewName = "user/manager/one";
        checkModelAndView(modelAndView, viewName, keys);

        System.out.println("OK!");
    }
}
