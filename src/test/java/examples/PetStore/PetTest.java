package examples.PetStore;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class PetTest {

    @Karate.Test
    Karate testPetStore(){
        return Karate.run(...paths: "PetStore").relativeTo(getClass());
    }

}
