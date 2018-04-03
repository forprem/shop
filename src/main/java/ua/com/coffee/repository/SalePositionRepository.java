package ua.com.coffee.repository;

import ua.com.coffee.model.position.SalePosition;

/**
 * Репозиторий для объектов класса {@link SalePosition}, предоставляющий
 * набор методов JPA для работы с БД. Наследует интерфейс {@link MainRepository}.
 *
 * @author Prem Prakash (saarp21@gmail.com)
 * @version 1.2
 * @see MainRepository
 * @see SalePosition
 */
public interface SalePositionRepository extends MainRepository<SalePosition> {
}
