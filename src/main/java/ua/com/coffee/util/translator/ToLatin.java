package ua.com.coffee.util.translator;

/**
 * The interface describes a set of methods for translate to Latin.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 */
public interface ToLatin {

    /**
     * Translates value from cyrillic to latin.
     * If value is blank then returns null.
     *
     * @return The translated string or null.
     */
    String fromCyrillic();
}
