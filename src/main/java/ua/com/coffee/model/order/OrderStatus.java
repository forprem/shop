package ua.com.coffee.model.order;

/**
 * Перечесление вожможных статусов выполнения заказа.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 */
public enum OrderStatus {
    /**
     * Новый заказ.
     */
    NEW,

    /**
     * Заказ в работу.
     */
    WORK,

    /**
     * Доставка заказа.
     */
    DELIVERY,

    /**
     * Заказ закрыт.
     */
    CLOSED,

    /**
     * Отказ заказа.
     */
    REJECTION
}
