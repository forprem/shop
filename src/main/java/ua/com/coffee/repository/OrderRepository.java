package ua.com.coffee.repository;

import ua.com.coffee.model.order.Order;

/**
 * Репозиторий для объектов класса {@link Order}, предоставляющий
 * набор методов JPA для работы с БД. Наследует интерфейс {@link MainRepository}.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 * @see MainRepository
 * @see Order
 */
public interface OrderRepository extends MainRepository<Order> {
    /**
     * Возвращает заказ из базы даных, у которого совпадает
     * уникальный номером с значением входящего параметра.
     *
     * @param number Номер заказа для возврата.
     * @return Объект класса {@link Order} - заказ с уникальным номером
     * для возвращения.
     */
    Order findByNumber(String number);

    /**
     * Удаляет заказ из базы даных, у которого совпадает уникальный номером
     * с значением входящего параметра.
     *
     * @param number Номер заказа для удаление.
     */
    void deleteByNumber(String number);
}
