package org.project.motorpool.model;

public enum Brand {

    DAF,
    MERCEDES,
    IVECO,
    SCANIA,
    RENAULT,
    VOLVO;

    @Override
    public String toString() {
        return this.name();
    }
}