package security;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class XmlNamespaceTest {
    @Test(timeout = 10000)
    public void parsesDeeplyNestedNamespacesWithinHeapLimit() {
        StringBuilder xml = new StringBuilder();
        int depth = 4000;
        for (int i = 0; i < depth; i++) {
            xml.append("<node xmlns:p").append(i).append("=\"urn:").append(i).append("\">");
        }
        xml.append("safe");
        for (int i = 0; i < depth; i++) {
            xml.append("</node>");
        }
        Document document = Jsoup.parse(xml.toString(), "", Parser.xmlParser());
        assertEquals(depth, document.getElementsByTag("node").size());
        assertEquals("safe", document.getElementsByTag("node").last().ownText());
    }
}
