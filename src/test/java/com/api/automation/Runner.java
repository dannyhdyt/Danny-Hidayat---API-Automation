package com.api.automation;

import com.intuit.karate.junit5.Karate;


public class Runner {

    @Karate.Test
    Karate postCreateUser() {
        return Karate.run("1postCreateUser").relativeTo(getClass());
    }

    @Karate.Test
    Karate postCreateUserWithList() {
        return Karate.run("1postCreateUserWithList").relativeTo(getClass());
    }

    @Karate.Test
    Karate getUserNameRequest() {
        return Karate.run("2getUserNameRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate getLoginRequest() {
        return Karate.run("2getLoginRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate getLogoutRequest() {
        return Karate.run("2getLogoutRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate putUpdateUser() {
        return Karate.run("3putUpdateUser").relativeTo(getClass());
    }

    //response 200 ketika data user sebelumnya sudah di create
    @Karate.Test
    Karate deleteRequest() {
        return Karate.run("deleteRequest").relativeTo(getClass());
    }
}