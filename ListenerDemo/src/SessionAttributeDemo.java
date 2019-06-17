

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class SessionAttributeDemo
 *
 */
@WebListener
public class SessionAttributeDemo implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public SessionAttributeDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent se)  { 
	         System.out.println("The attribute with name " + se.getName()
	        		 + " and value " + se.getValue() + " is added.");
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent se)  { 
    	System.out.println("The attribute with name " + se.getName()
		 + " and value " + se.getValue() + " is removed.");
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent se)  { 
    	System.out.println("The attribute with name " + se.getName()
		 + " and value " + se.getValue() + " is replaced.");
    }
	
}
