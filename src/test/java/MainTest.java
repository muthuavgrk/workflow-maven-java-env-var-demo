import org.testng.Assert;
import org.testng.annotations.Test;

public class MainTest {

    @Test
    public void envVarTest(){

        Assert.assertNotNull(System.getenv("LAST_MAVEN_COMMAND"));
        System.out.println("***********"+System.getenv("LAST_MAVEN_COMMAND"));
    }
}
