@isTest
public class TemperatureConverterTest {

    @isTest static void FahrenheitToCelsiusMethod(){
        Decimal tValue1 = TemperatureConverter.FahrenheitToCelsius(41);
        system.assertEquals(5, tValue1);
    }
    
        @isTest static void FahrenheitToCelsiusMethod1(){
        Decimal tValue1 = TemperatureConverter.FahrenheitToCelsius(0);
        system.assertNotEquals(5, tValue1);
    }
    
        @isTest static void FahrenheitToCelsiusMethod2(){
        Decimal tValue1 = TemperatureConverter.FahrenheitToCelsius(32);
        system.assertEquals(0, tValue1);
    }
    
        @isTest static void FahrenheitToCelsiusMethod3(){
        Decimal tValue1 = TemperatureConverter.FahrenheitToCelsius(5);
        system.assertEquals(-15, tValue1);
    }
}