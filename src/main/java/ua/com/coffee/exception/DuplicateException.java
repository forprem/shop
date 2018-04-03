package ua.com.coffee.exception;

/**
 * Исключение генерируется, если данные в базе данных дублируются.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 */
public class DuplicateException extends RuntimeException {
    /**
     * Конструктр без параметров.
     */
    public DuplicateException() {
        super();
    }

    /**
     * Конструкто с параметром.
     *
     * @param message Сообщение исключения.
     */
    public DuplicateException(final String message) {
        super(message);
    }

    public DuplicateException(final String message, final Throwable cause) {
        super(message, cause);
    }

    public DuplicateException(final Throwable cause) {
        super(cause);
    }
}
