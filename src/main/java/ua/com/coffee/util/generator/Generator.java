package ua.com.coffee.util.generator;

/**
 * The interface describes a set of methods for generating Object.
 *
 * @param <T> extends Object.
 * @author Yuriy Salimov (saarp21@gmail.com)
 */
public interface Generator<T> {

    /**
     * Generates object.
     *
     * @return The generated object.
     */
    T generate();
}
