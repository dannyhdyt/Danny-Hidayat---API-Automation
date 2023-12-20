package com.api.automation;

import com.intuit.karate.junit5.Karate;


public class Runner {

    @Karate.Test
    Karate postCreateUser() {
        return Karate.run("postCreateUser").relativeTo(getClass());
    }

    @Karate.Test
    Karate postCreateUserWithList() {
        return Karate.run("postCreateUserWithList").relativeTo(getClass());
    }

    @Karate.Test
    Karate getUserNameRequest() {
        return Karate.run("getUserNameRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate getLoginRequest() {
        return Karate.run("getLoginRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate getLogoutRequest() {
        return Karate.run("getLogoutRequest").relativeTo(getClass());
    }

    @Karate.Test
    Karate putUpdateUser() {
        return Karate.run("putUpdateUser").relativeTo(getClass());
    }

    //response 200 ketika data user sebelumnya sudah di create
    @Karate.Test
    Karate deleteRequest() {
        return Karate.run("deleteRequest").relativeTo(getClass());
    }
}