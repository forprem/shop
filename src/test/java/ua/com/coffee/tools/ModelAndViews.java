package ua.com.coffee.tools;

import org.junit.Ignore;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public final class ModelAndViews {

    public static void checkModelAndView(ModelAndView modelAndView, String view) {
        checkModelAndView(modelAndView, view, null);
    }

    public static void checkModelAndView(ModelAndView modelAndView, String view, String[] keys) {
        assertNotNull(modelAndView);
        assertNotNull(view);
        assertEquals(modelAndView.getViewName(), view);
        if (keys != null && keys.length > 0) {
            Map<String, Object> map = modelAndView.getModel();
            for (String key : keys) {
                assertTrue(map.containsKey(key));
                assertNotNull(map.get(key));
            }
        }
    }

    @Ignore
    public static void checkModelAndViewWithException(ModelAndView modelAndView) {
        String[] keys = { "cart_size", "text_error" };
        String viewName = "error/error";
        ModelAndViews.checkModelAndView(modelAndView, viewName, keys);
    }
}
