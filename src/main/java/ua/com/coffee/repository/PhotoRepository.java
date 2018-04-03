package ua.com.coffee.repository;

import ua.com.coffee.model.photo.Photo;

/**
 * Репозиторий для объектов класса {@link Photo}, предоставляющий
 * набор методов JPA для работы с БД. Наследует интерфейс {@link MainRepository}.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 * @see MainRepository
 * @see Photo
 */
public interface PhotoRepository extends MainRepository<Photo> {
    /**
     * Возвращает объект-изображение из базы даных, у которого совпадает уникальное
     * название с значением входящего параметра.
     *
     * @param title Название объекта-изображения для возврата.
     * @return Объект класса {@link Photo} - объект-изображение.
     */
    Photo findByTitle(String title);

    /**
     * Удаляет объект-изображение из базы даных, у которого совпадает уникальное
     * название с значением входящего параметра.
     *
     * @param title Название объекта-изображения для удаление.
     */
    void deleteByTitle(String title);
}
