package org.project.motorpool.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDateTime;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "flights")
public class Flight extends BaseEntity {

    private String number;

    private Date dateCreation;

    private Status status;

    private double distance;

    private double loadWeight;

    private String from;

    private String to;

    private LocalDateTime departureTime;

    private LocalDateTime arrivalTime;
}