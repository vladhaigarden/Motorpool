package org.project.motorpool.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "cars")
public class Car extends BaseEntity {

    private Long userId;

    private String registrationNumber;

    private Brand brand;

    private double loadCapacity;

    private TechnicalCondition condition;
}