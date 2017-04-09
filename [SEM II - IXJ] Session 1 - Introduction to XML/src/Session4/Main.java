package Session4;

import jdk.internal.org.xml.sax.SAXException;
import jdk.internal.org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.Parser;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;


public class Main {
    public static void main(String[] args) {
        try {
            SAXParserFactory spf = SAXParserFactory.newInstance();
            SAXParser sp = spf.newSAXParser();
            // sp.parse("src/Session4/Students.xml", new MyHandler());


        } catch (Exception e) {
            e.getMessage();
        }
    }
}

class MyHandler extends DefaultHandler {
    @Override
    public void characters(char[] chars, int i, int i1) throws SAXException {
        System.out.println(new String(chars, i, i1));
    }
}
