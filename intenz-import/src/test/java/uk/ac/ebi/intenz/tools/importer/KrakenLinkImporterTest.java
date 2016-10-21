package uk.ac.ebi.intenz.tools.importer;

import java.util.SortedSet;
import junit.framework.TestCase;
import org.apache.log4j.Logger;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeLink;

public class KrakenLinkImporterTest extends TestCase {

	private static final Logger logger = Logger.getLogger(KrakenLinkImporter.class);
	
	private KrakenLinkImporter importer;

        @Override
	protected void setUp() throws Exception {
		super.setUp();
		importer = new KrakenLinkImporter();
		importer.setupKraken();
	}

        @Override
	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testGetKrakenLinks() {
		SortedSet<EnzymeLink> links = importer.getKrakenLinks("1.2.3.4");
		assertFalse(links.isEmpty());
		for (EnzymeLink link : links) {
			logger.info(link.getName() + " - " + link.getAccession());
		}
	}

}
