package ua.com.coffee.service.interfaces;

import ua.com.coffee.model.position.SalePosition;

/**
 * Интерфейс сервисного слоя, описывает набор методов для работы
 * с объектами класса {@link SalePosition}.
 * Наследует интерфейс {@link MainService}.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 * @see SalePosition
 * @see MainService
 * @see ua.com.coffee.service.impl.SalePositionServiceImpl
 */
public interface SalePositionService extends MainService<SalePosition> {
}
