import com.bank.Bank;

public aspect Logger {

    pointcut success() : call(* create*(..) );
    after() : success() {
    //Aspecto ejemplo: solo muestra este mensaje despu�s de haber creado un usuario 
    	System.out.println("**** User created ****");
    }
    pointcut transaction() : call(* moneyM*(..) );
    after() : transaction() {
    //Aspecto ejemplo: solo muestra este mensaje despu�s de haber creado un usuario 
    	System.out.println("**** Transacción exitosa ****");
    	Bank.guardarDatos("Transacción ");
    }
    
    pointcut drawal() : call(* moneyW*(..) );
    after() : drawal() {
    //Aspecto ejemplo: solo muestra este mensaje despu�s de haber creado un usuario 
    	System.out.println("**** Dinero retirado ****");
    	Bank.guardarDatos("Retiro ");
    }
    
}