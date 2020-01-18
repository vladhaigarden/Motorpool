package org.project.motorpool.model;

public enum Status {

    OPENED("opened"),
    ACTIVE("active"),
    CLOSED("closed"),
    CANCELED("canceled");

    private String value;

    Status(String value) {
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