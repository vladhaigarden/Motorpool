package org.project.motorpool.model;

public enum TechnicalCondition {

    EXCELLENT("excellent"),
    SATISFACTORY("satisfactory"),
    POOR("poor");

    private String value;

    TechnicalCondition(String value) {
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