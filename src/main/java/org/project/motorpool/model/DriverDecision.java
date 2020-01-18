package org.project.motorpool.model;

public enum DriverDecision {

    AGREE("agree"),
    REFUSE("refuse"),
    WAITING("waiting");

    private String value;

    DriverDecision(String value) {
        this.value = value;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return value;
    }
}