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
@Table(name = "users")
public class User extends BaseEntity {

    private String login;

    private String password;

    private Role role;

    private String firstName;

    private String lastName;

    private String localeName;

    private String passport;

    private String phoneNumber;

    private Double earnings;
}