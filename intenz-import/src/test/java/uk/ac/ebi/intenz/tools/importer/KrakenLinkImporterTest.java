package uk.ac.ebi.intenz.tools.importer;

import java.util.SortedSet;
import junit.framework.TestCase;
import org.apache.log4j.Logger;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeLink;

public class KrakenLinkImporterTest extends TestCase {

	private static Logger LOGGER = Logger.getLogger(KrakenLinkImporter.class);
	
	private KrakenLinkImporter importer;

	protected void setUp() throws Exception {
		super.setUp();
		importer = new KrakenLinkImporter();
		//importer.setupKraken();
                importer.setupProteinApi();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetKrakenLinks() {
		//SortedSet<EnzymeLink> links = importer.getKrakenLinks("1.2.3.4");
               //SortedSet<EnzymeLink> links = importer.getKrakenLinks("2.1.1.61");//probematic in japi
                SortedSet<EnzymeLink> links = importer.getKrakenLinks("1.1.1.1");
		assertFalse(links.isEmpty());
		for (EnzymeLink link : links) {
			LOGGER.info(link.getName() + " - " + link.getAccession());
		}
	}

}
