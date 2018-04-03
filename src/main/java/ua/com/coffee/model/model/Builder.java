package ua.com.coffee.model.model;

/**
 * The interface provides a set of methods for building objects.
 *
 * @param <T> object type.
 * @author Prem Prakash (saarp21@gmail.com)
 */
public interface Builder<T> {

    /**
     * Builds and returns a new object.
     *
     * @return The new object.
     */
    T build();
}
