package org.project.motorpool.model;

public enum Role {

    ADMIN("admin"),
    DISPATCHER("dispatcher"),
    DRIVER("driver");

    private String value;

    Role(String value) {
        this.value = value;
    }

    public boolean equalsTo(String name) {
        return value.equals(name);
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return value;
    }
}