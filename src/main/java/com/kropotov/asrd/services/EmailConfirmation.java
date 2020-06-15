package com.kropotov.asrd.services;

public interface EmailConfirmation {

    boolean addValuePassAndEmail(Integer password, String emailVerified);

    void removeAll();

    boolean findByPassAndEmail(Integer password, String emailVerified);
}
