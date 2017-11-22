package com.epam.statistic.service;

import com.epam.statistic.entity.Laboratory;
import com.epam.statistic.repository.LabaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LaboratoryServiceImpl implements LaboratoryService {

    private final LabaRepository labaRepository;

    @Autowired
    public LaboratoryServiceImpl(LabaRepository labaRepository) {
        this.labaRepository = labaRepository;
    }

    @Override
    public List<Laboratory> findAll() {
        return labaRepository.findAll();
    }
}
