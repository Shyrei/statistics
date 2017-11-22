package com.epam.statistic.repository;

import com.epam.statistic.entity.Laboratory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LabaRepository extends JpaRepository<Laboratory, Long> {
}
