package ua.com.coffee.controller.seo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Favicon controller.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 */
@Controller
public final class FaviconController {

    /**
     * Returns a favicon.ico.
     * Request mapping: /favicon.ico
     * Method: GET
     *
     * @return The favicon.ico URL.
     */
    @RequestMapping(
            value = "/favicon.ico",
            method = RequestMethod.GET
    )
    public String getFavicon() {
        return "forward:/resources/img/favicon.ico";
    }
}
