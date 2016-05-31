package com.radeus.wedding.model;

import lombok.Data;

@Data
public class Rsvp {
    private String email;
    private String firstName;
    private String lastName;
    private boolean attending;
    private int totalInParty;

    public Rsvp() {
    }
}
