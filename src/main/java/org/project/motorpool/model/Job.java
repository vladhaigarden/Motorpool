package org.project.motorpool.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "jobs")
public class Job {

    @EmbeddedId
    private JobKey key;

    private DriverDecision driverDecision;

    private Boolean completed;
}