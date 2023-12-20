package com.api.automation;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;


public class RunAllTest {

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:com/api/automation").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}