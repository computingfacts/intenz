<!DOCTYPE html>
<html>

<jsp:include page="head.jsp">
    <jsp:param name="title" value="Intenz - Rules on enzyme classification"/>
</jsp:include>

<body class="level2">
<div id="wrapper" class="container_24">

<jsp:include page="headers.jsp">
    <jsp:param name="loc" value="docs"/>
</jsp:include>

<div class="grid_24 clearfix" id="content" role="main">

<section class="grid_18 alpha">
    <h2>Classification rules</h2>
	<div class="iconboxcontents tocBody" id="rulesContent">
		<ol style="list-style-type: decimal;">
			<li><a href="#principles">General principles</a></li>
			<li><a href="#names">Recommended and Systematic Names</a></li>
			<li><a href="#scheme">Scheme of Classification and Numbering of Enzyme-Catalysed Reactions</a>
				<ul>
					<li><a href="#scheme1">Class 1. Oxidoreductases.</a></li>
					<li><a href="#scheme2">Class 2. Transferases.</a></li>
					<li><a href="#scheme3">Class 3. Hydrolases.</a></li>
					<li><a href="#scheme4">Class 4. Lyases.</a></li>
					<li><a href="#scheme5">Class 5. Isomerases.</a></li>
					<li><a href="#scheme6">Class 6. Ligases.</a></li>
				</ul>
			</li>
			<li><a href="#rules">Rules for Classification and Nomenclature</a>
				<ol style="list-style-type: lower-alpha;">
					<li><a href="#rulesGeneral">General Rules for Systematic Names and Guidelines for Recommended Names</a></li>
					<li><a href="#rulesClasses">Rules and Guidelines for Particular Classes of Enzymes</a>
						<ul>
							<li><a href="#rules1">Class 1</a></li>
							<li><a href="#rules2">Class 2</a></li>
							<li><a href="#rules3">Class 3</a></li>
							<li><a href="#rules4">Class 4</a></li>
							<li><a href="#rules5">Class 5</a></li>
							<li><a href="#rules6">Class 6</a></li>
						</ul>
					</li>
				</ol>
			</li>
		</ol>
	</div>
</section>

<section class="grid_6 omega">
    <%@ include file="docs.html" %>
</section>

<section class="grid_24">
<div class="centered">
	<b>Nomenclature Committee of the International
	Union of Biochemistry and Molecular Biology (NC-IUBMB)</b>
	<br>
	<p>Extracted from <i>Enzyme Nomenclature</i> (1992, Academic Press, San Diego, California)</p>
	<h4>Classification and Nomenclature of Enzyme-Catalysed Reactions</h4>
</div>

<h2 id="principles"><a name="principles"></a>1. General principles</h2>
<p>Because of their close interdependence, it is convenient to deal
with the classification and nomenclature together.</p>
<p>The <i>first general principle</i> of these 'Recommendations' is
that names purporting to be names of enzymes, especially those ending in
<i>-ase</i>, should be used only for single enzymes, <i>i.e.</i> single
catalytic entities. They should not be applied to systems containing
more than one enzyme. When it is desired to name such a system on the
basis of the overall reaction catalysed by it, the word <i>system</i>
should be included in the name. For example, the system catalysing the
oxidation of succinate by molecular oxygen, consisting of succinate
dehydrogenase, cytochrome oxidase, and several intermediate carriers,
should not be named <i>succinate oxidase</i>, but it may be called the <i>succinate
oxidase system</i>. Other examples of systems consisting of several
structurally and functionally linked enzymes (and cofactors) are the <i>pyruvate
dehydrogenase system</i>, the similar <i>2-oxoglutarate dehydrogenase
system</i>, and the <i>fatty acid synthase system</i>.</p>
<p>In this context it is appropriate to express disapproval of a
loose and misleading practice that is found in the biological
literature. It consists in designation of a natural substance (or even
of an hypothetical active principle), responsible for a physiological or
biophysical phenomenon that cannot be described in terms of a definite
chemical reaction, by the name of the phenomenon in conjugation with the
suffix <i>-ase</i>, which implies an individual enzyme. Some examples of
such <i>phenomenase</i> nomenclature, which should be discouraged even
if there are reasons to suppose that the particular agent may have
enzymic properties, are: <i>permease, translocase, reparase,
joinase, replicase, codase, etc..</i></p>
<p>The <i>second general principle</i> is that enzymes are
principally classified and named according to the reaction they
catalyse. The chemical reaction catalysed is the specific property that
distinguishes one enzyme from another, and it is logical to use it as
the basis for the classification and naming of enzymes.</p>
<p>Several alternative bases for classification and naming had been
considered, <i>e.g.</i> chemical nature of the enzymes (whether it is a
flavoprotein, a hemoprotein, a pyridoxal-phosphate protein, a copper
protein, and so on), or chemical nature of the substrate (nucleotides,
carbohydrates, proteins, <i>etc.</i>). The first cannot serve as a
general basis, for only a minority of enzymes have such identifiable
prosthetic groups. The chemical nature of the enzyme has, however, been
used exceptionally in certain cases where classification based on
specificity is difficult, for example, with the peptidases (subclass <a
href="query?cmd=SearchEC&ec=3.4">EC 3.4</a>). The second basis for classification is hardly
practicable, owing to the great variety of substances acted upon and
because it is not sufficiently informative unless the type of reaction
is also given. It is the overall reaction, as expressed by the formal
equation, that should be taken as the basis. Thus, the intimate
mechanism of the reaction, and the formation of intermediate complexes
of the reactants with the enzyme is not taken into account, but only the
observed chemical change produced by the complete enzyme reaction. For
example, in those cases in which the enzyme contains a prosthetic group
that serves to catalyse transfer from a donor to an acceptor (<i>e.g.</i>
flavin, biotin, or pyridoxal-phosphate enzymes) the name of the
prosthetic group is not normally included in the name of the enzyme.
Nevertheless, where alternative names are possible, the mechanism may be
taken into account in choosing between them.</p>
<p>A consequence of the adoption of the chemical reaction as the
basis for naming enzymes is that a systematic name cannot be given to an
enzyme until it is known what chemical reaction it catalyses. This
applies, for example, to a few enzymes that have so far not been shown
to catalyse any chemical reaction, but only isotopic exchanges; the
isotopic exchange gives some idea of one step in the overall chemical
reaction, but the reaction as a whole remains unknown.</p>
<p>A second consequence of this concept is that a certain name
designates not a single enzyme protein but a group of proteins with the
same catalytic property. Enzymes from different sources (various
bacterial, plant or animal species) are classified as one entry. The
same applies to isoenzymes (see below). However, there are exceptions to
this general rule. Some are justified because the mechanism of the
reaction or the substrate specificity is so different as to warrant
different entries in the enzyme list. This applies, for example, to the
two cholinesterases, EC 3.1.1.7 and 3.1.1.8, the two citrate
hydro-lyases, EC 4.2.1.3 and 4.2.1.4, and the two amine oxidases, EC
1.4.3.4 and 1.4.3.6. Others are mainly historical, <i>e.g.</i> acid and
alkaline phosphatases (EC 3.1.3.1 and EC 3.1.3.2).</p>
<p>A <i>third general principle</i> adopted is that the enzymes are
divided into groups on the basis of the type of reaction catalysed, and
this, together with the name(s) of the substrate(s) provides a basis for
naming individual enzymes. It is also the basis for classification and
code numbers.</p>
<p>Special problems attend the classification and naming of enzymes
catalysing complicated transformations that can be resolved into several
sequential or coupled intermediary reactions of different types, all
catalysed by a single enzyme (not an enzyme system). Some of the steps
may be spontaneous non-catalytic reactions, while one or more
intermediate steps depend on catalysis by the enzyme. Wherever the
nature and sequence of intermediary reactions is known or can be
presumed with confidence, classification and naming of the enzyme should
be based on the first enzyme-catalysed step that is essential to the
subsequent transformations, which can be indicated by a supplementary
term in parentheses, <i>e.g.</i> <small>L</small>-<i>malate
glyoxylate-lyase (CoA-acetylating)</i> (EC 4.1.3.2, <i>cf.</i> section 3).</p>
<p>To classify an enzyme according to the type of reaction
catalysed, it is occasionally necessary to choose between alternative
ways of regarding a given reaction. Some considerations of this type are
outlined in section 3 of this chapter. In general, that alternative
should be selected which fits in best with the general system of
classification and reduces the number of exceptions.</p>
<p>One important extension of this principle is the question of the
direction in which the reaction is written for the purposes of
classification. To simplify the classification, the direction chosen
should be the same for all enzymes in a given class, even if this
direction has not been demonstrated for all. Thus the <i>systematic</i>
names, on which the classification and code numbers are based, may be
derived from a written reaction, even though only the reverse of this
has been actually demonstrated experimentally. In the list in this
volume, the reaction is written to illustrate the classification, <i>i.e.</i>
in the direction described by the systematic name. However, the <i>recommended</i>
name may be based on either direction of reaction, and is often based on
the presumed physiological direction.</p>
<p>Many examples of this usage are found in section 1 of the list.
The reaction for EC 1.1.1.9 is written as an oxidation of xylitol by
NAD, in parallel with all other oxidoreductases in subgroup EC 1.1.1,
and the systematic name is accordingly, <i>xylitol:NAD
2-oxidoreductase (</i><small>D</small>-<i>xylulose-forming)</i>. However,
the recommended name, based on the reverse direction of reaction, is <small>D</small>-<i>xylulose
reductase</i>.</p>

<h2 id="names">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="names"></a>2. Recommended and Systematic Names
</h2>
<p>The first Enzyme Commission gave much thought to the question of
a systematic and logical nomenclature for enzymes, and finally
recommended that there should be two nomenclatures for enzymes, one
systematic, and one working or trivial. The systematic name of an
enzyme, formed in accordance with definite rules, showed the action of
an enzyme as exactly as possible, thus identifying the enzyme precisely.
The trivial name was sufficiently short for general use, but not
necessarily very systematic; in a great many cases it was a name already
in current use. The introduction of (often cumbersome) systematic names
was strongly criticised. In many cases the reaction catalysed is not
much longer than the systematic name and can serve just as well for
identification, especially in conjunction with the code number.</p>
<p>The Commission for Revision of Enzyme Nomenclature discussed this
problem at length, and a change in emphasis was made. It was decided to
give the trivial names more prominence in the Enzyme List; they now
follow immediately after the code number, and are described as
Recommended Name. Also, in the index the recommended names are indicated
by an asterisk. Nevertheless, it was decided to retain the systematic
names as the basis for classification for the following reasons:</p>
<p>(i) the code number alone is only useful for identification of an
enzyme when a copy of the Enzyme List is at hand, whereas the systematic
name is self-explanatory;</p>
<p>(ii) the systematic name stresses the type of reaction, the
reaction equation does not;</p>
<p>(iii) systematic names can be formed for new enzymes by the
discoverer, by application of the rules, but code numbers should <b>not</b>
be assigned by individuals;</p>
<p>(iv) recommended names for new enzymes are frequently formed as a
condensed version of the systematic name; therefore, the systematic
names are helpful in finding recommended names that are in accordance
with the general pattern.</p>
<p>It is recommended that for enzymes that are not the main subject
of a paper or abstract, the recommended names should be used, but they
should be identified at their first mention by their code numbers and
source. Where an enzyme is the main subject of a paper or abstract, its
code number, systematic name, or, alternatively, the reaction equation
and source should be given at its first mention; thereafter the
recommended name should be used. In the light of the fact that enzyme
names and code numbers refer to reactions catalysed rather than to
discrete proteins, it is of special importance to give also the source
of the enzyme for full identification; in cases where multiple forms are
known to exist, knowledge of this should be included where available.</p>
<p>When a paper deals with an enzyme that is not yet in the Enzyme
List, the author may introduce a new name and, if desired, a new
systematic name, both formed according to the recommended rules. A
number should be assigned only by the Nomenclature Committee of IUBMB.</p>
<p>The Enzyme List contains one or more references for each enzyme.
It should be stressed that no attempt has been made to provide a
complete bibliography, or to refer to the first description of an
enzyme. The references are intended to provide sufficient evidence for
the existence of an enzyme catalysing the reaction as set out. Where
there is a major paper describing the purification and specificity of an
enzyme, or a major review article, this has been quoted to the exclusion
of earlier and later papers. In some cases separate references are given
for animal, plant and bacterial enzymes.</p>

<h2 id="scheme">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme"></a>3. Scheme of Classification and Numbering of
	Enzyme-Catalysed Reactions
</h2>
<p>The first Enzyme Commission, in its report in 1961, devised a
system for classification of enzymes that also serves as a basis for
assigning code numbers to them. These code numbers, prefixed by EC,
which are now widely in use, contain four elements separated by points,
with the following meaning:</p>
<p>(i) the first number shows to which of the six main divisions
(classes) the enzyme belongs,</p>
<p>(ii) the second figure indicates the subclass,</p>
<p>(iii) the third figure gives the sub-subclass,</p>
<p>(iv) the fourth figure is the serial number of the enzyme in its
sub-subclass.</p>
<p>The subclasses and sub-subclasses are formed according to
principles indicated below; the full key to the classification is given
in the Contents pages at the beginning of this volume.</p>
<p>The main divisions and subclasses are:</p>

<h3 id="scheme1">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme1"></a>Class 1. Oxidoreductases.
</h3>
<p>To this class belong all enzymes catalysing oxidoreduction
reactions. The substrate that is oxidized is regarded as hydrogen donor.
The systematic name is based on <i>donor:acceptor oxidoreductase</i>.
The recommended name will be <i>dehydrogenase</i>, wherever this is
possible; as an alternative, <i>reductase</i> can be used. <i>Oxidase</i>
is only used in cases where O<sub><small>2</small></sub> is the
acceptor.</p>
<p>The second figure in the code number of the oxidoreductases
indicates the group in the hydrogen donor which undergoes oxidation: 1
denotes a -CHOH- group, 2 an aldehyde- or keto-group, and so on, as
listed in the key.</p>
<p>The third figure, except in subclasses EC 1.11, EC 1.13, EC 1.14
and EC 1.15, indicates the type of acceptor involved: 1 denotes NAD(P),
2 a cytochrome, 3 molecular oxygen, 4 a disulfide, 5 a quinone or
similar compound, 6 a nitrogenous group, 7 an iron-sulfur protein and 8
a flavin. In subclasses EC 1.13 and EC 1.14 a different classification
scheme is used and sub-subclasses are numbered from 11 onwards.</p>
<p>It should be noted that in reactions with a nicotinamide coenzyme
this is always regarded as acceptor, even if this direction of the
reaction is not readily demonstrated. The only exception is the subclass
EC 1.6, in which NAD(P)H is the donor; some other redox catalyst is the
acceptor.</p>
<p>Although not used as a criterion for classification, the two
hydrogen atoms at carbon-4 of the dihydropyridine ring of nicotinamide
nucleotides are not equivalent in that the hydrogen is transferred
stereospecifically.</p>

<h3 id="scheme2">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme2"></a>Class 2. Transferases.
</h3>
<p>Transferases are enzymes transferring a group, <i>e.g.</i> a
methyl group or a glycosyl group, from one compound (generally regarded
as donor) to another compound (generally regarded as acceptor). The
systematic names are formed according to the scheme <i>donor:acceptor
grouptransferase</i>. The recommended names are normally formed according to
<i>acceptor grouptransferase</i> or <i>donor grouptransferase</i>. In
many cases, the donor is a cofactor (coenzyme) charged with the group to
be transferred. A special case is that of the transaminases (see below).</p>
<p>Some transferase reactions can be viewed in different ways. For
example, the enzyme-catalysed reaction</p>
<p style="text-align: center">
X-Y + Z = X + Z-Y
</p>
<p>may be regarded either as a transfer of the group Y from X to Z,
or as a breaking of the X-Y bond by the introduction of Z. Where Z
represents phosphate or arsenate, the process is often spoken of as
'phosphorolysis' or 'arsenolysis', respectively, and a number of enzyme
names based on the pattern of <i>phosphorylase</i> have come into use.
These names are not suitable for a systematic nomenclature, because
there is no reason to single out these particular enzymes from the other
transferases, and it is better to regard them simply as <i>Y-transferases</i>.</p>
<p>In the above reaction, the group transferred is usually
exchanged, at least formally, for hydrogen, so that the equation could
more strictly be written as:</p>
<p style="text-align: center">
X-Y + Z-H = X-H + Z-Y.
</p>
<p>Another problem is posed in enzyme-catalysed transaminations,
where the -NH<sub><small>2</small></sub> group and -H are transferred to
a compound containing a carbonyl group in exchange for the =O of that
group, according to the general equation:</p>
<p style="text-align: center">
R<sup><small>1</small></sup>-CH(-NH<sub><small>2</small></sub>)-R<sup><small>2</small></sup>
+ R<sup><small>3</small></sup>-CO-R<sup><small>4</small></sup> &#8594; R<sup><small>1</small></sup>-CO-R<sup><small>2</small></sup>
+ R<sup><small>3</small></sup>-CH(-NH<sub><small>2</small></sub>)-R<sup><small>4</small></sup>.
</p>
<p>The reaction can be considered formally as oxidative deamination
of the donor (<i>e.g.</i> amino acid) linked with reductive amination of
the acceptor (<i>e.g.</i> oxo acid), and the transaminating enzymes
(pyridoxal-phosphate proteins) might be classified as oxidoreductases.
However, the unique distinctive feature of the reaction is the transfer
of the amino group (by a well-established mechanism involving covalent
substrate-coenzyme intermediates), which justified allocation of these
enzymes among the transferases as a special subclass (EC 2.6.1, <i>transaminases</i>).</p>
<p>The second figure in the code number of transferases indicates
the group transferred; a one-carbon group in EC 2.1, an aldehydic or
ketonic group in EC 2.2, an acyl group in EC 2.3 and so on.</p>
<p>The third figure gives further information on the group
transferred; <i>e.g.</i> subclass EC 2.1 is subdivided into <i>methyltransferases</i>
(EC 2.1.1), <i>hydroxymethyl-</i> and <i>formyltransferases</i> (EC
2.1.2) and so on; only in subclass EC 2.7, does the third figure
indicate the nature of the acceptor group.</p>

<h3 id="scheme3">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme3"></a>Class 3. Hydrolases.
</h3>
<p>These enzymes catalyse the hydrolytic cleavage of C-O, C-N, C-C
and some other bonds, including phosphoric anhydride bonds. Although the
systematic name always includes <i>hydrolase</i>, the recommended name
is, in many cases, formed by the name of the substrate with the suffix <i>-ase</i>.
It is understood that the name of the substrate with this suffix means a
hydrolytic enzyme.</p>
<p>A number of hydrolases acting on ester, glycosyl, peptide, amide
or other bonds are known to catalyse not only hydrolytic removal of a
particular group from their substrates, but likewise the transfer of
this group to suitable acceptor molecules. In principle, all hydrolytic
enzymes might be classified as transferases, since hydrolysis itself can
be regarded as transfer of a specific group to water as the acceptor.
Yet, in most cases, the reaction with water as the acceptor was
discovered earlier and is considered as the main physiological function
of the enzyme. This is why such enzymes are classified as hydrolases
rather than as transferases.</p>
<p>Some hydrolases (especially some of the esterases and
glycosidases) pose problems because they have a very wide specificity
and it is not easy to decide if two preparations described by different
authors (perhaps from different sources) have the same catalytic
properties, or if they should be listed under separate entries. An
example is <i>vitamin A esterase</i> (formerly EC 3.1.1.12, now believed
to be identical with EC 3.1.1.1). To some extent the choice must be
arbitrary; however, separate entries should be given only when the
specificities are sufficiently different.</p>
<p>Another problem is that proteinases have 'esterolytic' action;
they usually hydrolyse ester bonds in appropriate substrates even more
rapidly than natural peptide bonds. In this case, classification among
the peptide hydrolases is based on historical priority and presumed
physiological function.</p>
<p>The second figure in the code number of the hydrolases indicates
the nature of the bond hydrolysed; EC 3.1 are the <i>esterases</i>; EC
3.2 the <i>glycosylases</i>, and so on.</p>
<p>The third figure normally specifies the nature of the substrate,
<i>e.g.</i> in the esterases the <i>carboxylic ester hydrolases</i> (EC
3.1.1), <i>thiolester hydrolases</i> (EC 3.1.2), <i>phosphoric
monoester hydrolases</i> (EC 3.1.3); in the glycosylases the <i>O-glycosidases</i>
(EC 3.2.1), <i>N-glycosylases</i> (EC 3.2.2), <i>etc</i>. Exceptionally,
in the case of the peptidyl-peptide hydrolases the third figure is based
on the catalytic mechanism as shown by active centre studies or the
effect of pH.</p>

<h3 id="scheme4">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme4"></a>Class 4. Lyases.
</h3>
<p>Lyases are enzymes cleaving C-C, C-O, C-N, and other bonds by
elimination, leaving double bonds or rings, or conversely adding groups
to double bonds. The systematic name is formed according to the pattern
<i>substrate group-lyase</i>. The hyphen is an important part of the
name, and to avoid confusion should not be omitted, <i>e.g.
hydro-lyase</i> not 'hydrolyase'. In the recommended names, expressions like
<i>decarboxylase, aldolase, dehydratase</i> (in case of elimination of
CO<sub><small>2</small></sub>, aldehyde, or water) are used. In cases
where the reverse reaction is much more important, or the only one
demonstrated, <i>synthase</i> (not synthetase) may be used in the name.
Various subclasses of the lyases include pyridoxal-phosphate enzymes
that catalyse the elimination of a <span style="font-family: symbol">b</span>-
or <span style="font-family: symbol">g</span>-substituent from an <span
	style="font-family: symbol">a</span>-amino acid followed by a
replacement of this substituent by some other group. In the overall
replacement reaction, no unsaturated end-product is formed; therefore,
these enzymes might formally be classified as <i>alkyl-transferases</i>
(EC 2.5.1...). However, there is ample evidence that the replacement is
a two-step reaction involving the transient formation of enzyme-bound <span
	style="font-family: symbol">a,b</span>(or <span
	style="font-family: symbol">b,g</span>)-unsaturated amino acids.
According to the rule that the first reaction is indicative for
classification, these enzymes are correctly classified as <i>lyases</i>.
Examples are <i>tryptophan synthase</i> (EC 4.2.1.20) and <i>cystathionine
<span style="font-family: symbol">b</span>-lyase</i> (EC 4.2.1.22).</p>
<p>The second figure in the code number indicates the bond broken:
EC 4.1 are carbon-carbon lyases, EC 4.2 carbon-oxygen lyases and so on.</p>
<p>The third figure gives further information on the group
eliminated (<i>e.g.</i> CO<sub><small>2</small></sub> in EC 4.1.1, H<sub><small>2</small></sub>O
in EC 4.2.1).</p>

<h3 id="scheme5">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme5"></a>Class 5. Isomerases.
</h3>
<p>These enzymes catalyse geometric or structural changes within one
molecule. According to the type of isomerism, they may be called <i>racemases,
epimerases, cis-trans-isomerases, isomerases, tautomerases, mutases </i>or<i>
cycloisomerases</i>.</p>
<p>In some cases, the interconversion in the substrate is brought
about by an intramolecular oxidoreduction (EC 5.3); since hydrogen donor
and acceptor are the same molecule, and no oxidized product appears,
they are not classified as oxidoreductases, even though they may contain
firmly bound NAD(P).</p>
<p>The subclasses are formed according to the type of isomerism, the
sub-subclasses to the type of substrates.</p>

<h3 id="scheme6">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="scheme6"></a>Class 6. Ligases.
</h3>
<p>Ligases are enzymes catalysing the joining together of two
molecules coupled with the hydrolysis of a diphosphate bond in ATP or a
similar triphosphate. The systematic names are formed on the system <i>X:Y
ligase (ADP-forming).</i> In earlier editions of the list the term <i>synthetase</i>
has been used for the recommended names. Many authors have been confused
by the use of the terms <i>synthetase</i> (used only for Group 6) and <i>synthase</i>
(used throughout the list when it is desired to emphasis the synthetic
nature of the reaction). Consequently NC-IUB decided in 1983 to abandon
the use of synthetase for recommended names, and to replace them with
names of the type <i>X-Y ligase</i>. In a few cases in Group 6, where
the reaction is more complex or there is a common name for the product,
a synthase name is used (<i>e.g.</i> EC 6.3.2.11 and EC 6.3.5.1).</p>
<p>It is recommended that if the term <i>synthetase</i> is used by
authors, it should continue to be restricted to the ligase group.</p>
<p>The second figure in the code number indicates the bond formed:
EC 6.1 for C-O bonds (enzymes acylating tRNA), EC 6.2 for C-S bonds
(acyl-CoA derivatives), <i>etc.</i> Sub-subclasses are only in use in
the C-N ligases.</p>
<p>In a few cases it is necessary to use the word <i>other</i> in
the description of subclasses and sub-subclasses. They have been
provisionally given the figure 99, in order to leave space for new
subdivisions.</p>
<p>From time to time, some enzymes have been deleted from the List,
while some others have been renumbered. However, the old numbers have <b><i>not</i></b>
been allotted to new enzymes; rather the place has been left vacant and
cross-reference is made according to the following scheme:</p>
<p>[<b>EC 1.2.3.4 Deleted entry:</b> old name]</p>
<p>or</p>
<p>[<b>EC 1.2.3.4 Transferred entry:</b> now EC 5.6.7.8 -
recommended name].</p>
<p>Entries for reclassified enzymes transferred from one position in
the List to another are followed, for reference, by a comment indicating
the former number.</p>
<p>It is regarded as important that the same policy be followed in
future revisions and extensions of the Enzyme List, which may become
necessary from time to time.</p>

<h2 id="rules">
	<a name="rules"></a>4. Rules for Classification and Nomenclature
</h2>

<h3 id="rulesGeneral">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rulesGeneral"></a>(a) General Rules for Systematic Names and Guidelines for
	Recommended Names
</h3>
<p><b>Rule 1.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Generally accepted trivial names of substrates may be used in
enzyme names. The prefix <small>D</small>- should be omitted for all <small>D</small>-sugars
and <small>L</small>- for individual amino acids, unless ambiguity would
be caused. In general, it is not necessary to indicate positions of
substituents in recommended names, unless it is necessary to prevent two
different enzymes having the same name. The prefix <i>keto</i> is no
longer used for derivatives of sugars in which -CHOH- has been replaced
by -CO-; they are named throughout as dehydro-sugars.</p>
<p><i>(Systematic Names)</i></p>
<p>To produce usable systematic names, accepted trivial names of
substrates forming part of the enzyme names should be used. Where no
accepted and convenient trivial names exist, the official IUPAC rules of
nomenclature should be applied to the substrate name. The 1,2,3 system
of locating substituents should be used instead of the <span
	style="font-family: symbol">a,b,g</span> system, although group names
such as <span style="font-family: symbol">b</span>-aspartyl-, <span
	style="font-family: symbol">g</span>-glutamyl-, and also <span
	style="font-family: symbol">b</span>-alanine and <span
	style="font-family: symbol">g</span>-lactone are permissible; <span
	style="font-family: symbol">a,b</span> should normally be used for
indicating configuration, as in <span style="font-family: symbol">a</span>-<small>D</small>-glucose.
For nucleotide groups, <i>adenylyl</i> (not adenyl), <i>etc</i>. should
be the form used. The name oxo acids (not keto acids) may be used as a
class name, and for individual compounds in which -CH<sub><small>2</small></sub>-
has been replaced by -CO-, oxo should be used.</p>
<p><b>Rule 2.</b></p>
<p>Where the substrate is normally in the form of an anion, its name
should end in <i>-ate</i> rather than <i>-ic; e.g. lactate
dehydrogenase,</i> not 'lactic dehydrogenase' or 'lactic acid
dehydrogenase'.</p>
<p><b>Rule 3.</b></p>
<p>Commonly used abbreviations for substrates, <i>e.g.</i> ATP, may
be used in names of enzymes, but the use of new abbreviations (not
listed in recommendations of the IUPAC-IUB Commission on Biochemical
Nomenclature) should be discouraged. Chemical formulae should not
normally be used instead of names of substrates. Abbreviations for names
of enzymes, <i>e.g.</i> GDH, should not be used.</p>
<p><b>Rule 4.</b></p>
<p>Names of substrates composed of two nouns, such as glucose
phosphate, which are normally written with a space, should be hyphenated
when they form part of the enzyme names, and thus become adjectives, <i>e.g.</i>
<i>glucose-6-phosphate dehydrogenase</i> (EC 1.1.1.49). This follows
standard practice in phrases where two nouns qualify a third; see, for
example, <i>Handbook for Chemical Society Authors</i>, 2nd edn, p. 14
(The Chemical Society, London, 1961).</p>
<p><b>Rule 5.</b></p>
<p>The use as enzyme names of descriptions such as <i>condensing
enzyme, acetate-activating enzyme, pH 5 enzyme</i> should be discontinued as
soon as the catalysed reaction is known. The word <i>activating</i>
should not be used in the sense of converting the substrate into a
substance that reacts further; all enzymes act by activating their
substrates, and the use of the word in this sense may lead to confusion.</p>

	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
<p><b>Rule 6.</b></p>
<p><i>(Recommended Names)</i></p>
<p>If it can be avoided, a recommended name should not be based on a
substance that is not a true substrate, <i>e.g.</i> enzyme EC 4.2.1.17
should not be called 'crotonase', since it does not act on crotonate.</p>
<p><b>Rule 7.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Where a name in common use gives some indication of the reaction
and is not incorrect or ambiguous, its continued use is recommended. In
other cases a recommended name is based on the same general principles
as the systematic name (see Rule 7 below) but with a minimum of detail,
to produce a name short enough for convenient use. A few names of
proteolytic enzymes ending in <i>-in</i> are retained; all other enzyme
names should end in <i>-ase</i>.</p>
<p><i>(Systematic Names)</i></p>
<p>Systematic names consist of two parts. The first contains the
name of the substrate or, in the case of a bimolecular reaction, of the
two substrates separated by a colon, with small and equal spaces before
and after the colon. The second part, ending in <i>-ase</i>, indicates
the nature of the reaction.</p>
<p><b>Rule 8.</b></p>
<p>A number of generic words indicating a type of reaction may be
used in either recommended or systematic names: <i>oxidoreductase,
oxygenase, transferase</i> (with a prefix indicating the nature of the group
transferred), <i>hydrolase, lyase, racemase, epimerase, isomerase,
mutase, ligase.</i></p>
<p><b>Rule 9.</b></p>
<p><i>(Recommended Names)</i></p>
<p>A number of additional generic words indicating reaction types
are used in recommended names, but not in the systematic nomenclature, <i>e.g.
dehydrogenase, reductase, oxidase, peroxidase, kinase, tautomerase,
deaminase, dehydratase, etc..</i></p>
<p><b>Rule 10.</b></p>
<p>Where additional information is needed to make the reaction
clear, a phrase indicating the reaction or a product should be added in
parentheses after the second part of the name <i>e.g. (ADP-forming),
(dimerizing), (CoA-acylating).</i></p>
<p><b>Rule 11.</b></p>
<p><i>(Recommended Names)</i></p>
<p>The direct attachment of <i>-ase</i> to the name of the substrate
will indicate that the enzyme brings about hydrolysis.</p>
<p><i>(Systematic Names)</i></p>
<p>The suffix <i>-ase</i> should never be attached directly to the
name of the substrate.</p>

	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
<p><b>Rule 12.</b></p>
<p><i>(Recommended Names)</i></p>
<p>The name 'dehydrase' which was at one time used for both
dehydrogenating and dehydrating enzymes, should not be used. <i>Dehydrogenase</i>
will be used for the former and <i>dehydratase</i> for the latter.</p>
<p><b>Rule 13.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Where possible, recommended names should normally be based on a
reaction direction that has been demonstrated, <i>e.g. dehydrogenase</i>
or <i>reductase</i>, <i>decarboxylase</i> or <i>carboxylase</i>.</p>
<p><i>(Systematic Names)</i></p>
<p>In the case of reversible reactions, the direction chosen for
naming should be the same for all the enzymes in a given class, even if
this direction has not been demonstrated for all. Thus, systematic names
may be based on a written reaction, even though only the reverse of this
has been actually demonstrated experimentally.</p>
<p><b>Rule 14.</b></p>
<p><i>(Systematic Names)</i></p>
<p>When the overall reaction includes two different changes, <i>e.g.</i>
an oxidative demethylation, the classification and systematic name
should be based, whenever possible, on the one (or the first one)
catalysed by the enzyme; the other function(s) should be indicated by
adding a suitable participle in parentheses, as in the case of<i>
sarcosine:oxygen oxidoreductase (demethylating)</i> (EC 1.5.3.1); <small>D</small>-<i>aspartate:oxygen
oxidoreductase (deaminating)</i> (EC 1.4.3.1); <small>L</small>-<i>serine
hydro-lyase (adding indoleglycerol-phosphate)</i> (EC 4.2.1.20).</p>
<p>Other examples of such additions are <i>(decarboxylating),
(cyclizing), (acceptor-acylating), (isomerizing).</i></p>
<p><b>Rule 15.</b></p>
<p>When an enzyme catalyses more than one type of reaction, the name
should normally refer to one reaction only. Each case must be considered
on its merits, and the choice must be, to some extent, arbitrary. Other
important activities of the enzyme may be indicated in the List under
'Reaction' or 'Comments'.</p>
<p>Similarly, when any enzyme acts on more than one substrate (or
pair of substrates), the name should normally refer only to one
substrate (or pair of substrates), although in certain cases it may be
possible to use a term that covers a whole group of substrates, or an
alternative substrate may be given in parentheses.</p>
<p><b>Rule 16.</b></p>
<p>A group of enzymes with closely similar specificities should
normally be described by a single entry. However, when the specificity
of two enzymes catalysing the same reactions is sufficiently different
(the degree of difference being a matter of arbitrary choice) two
separate entries may be made, <i>e.g.</i> EC 1.2.1.4 and EC 1.2.1.7.
Separate entries are also appropriate for enzymes having similar
catalytic functions, but known to differ basically with regard to
reaction mechanism or to the nature of the catalytic groups, <i>e.g.
amine oxidase (flavin-containing)</i> (EC 1.4.3.4) and <i>amine oxidase
(copper-containing)</i> (EC 1.4.3.6).</p>

<h3 id="rulesClasses">
	<a name="rulesClasses"></a>(b) Rules and Guidelines for Particular Classes of Enzymes
</h3>

<h4 id="rules1">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules1"></a>Class 1
</h4>
<p><b>Rule 17.</b></p>
<p><i>(Recommended Names)</i></p>
<p>The terms <i>dehydrogenase</i> or <i>reductase</i> will be used
much as hitherto. The latter term is appropriate when hydrogen transfer
from the substance mentioned as donor in the systematic name is not
readily demonstrated. <i>Transhydrogenase</i> may be retained for a few
well-established cases. <i>Oxidase</i> is used only for cases there O<sub><small>2</small></sub>
acts as an acceptor, and <i>oxygenase</i> only for those cases where the
O<sub><small>2</small></sub> molecule (or part of it) is directly
incorporated into the substrate. <i>Peroxidase</i> is used for enzymes
using H<sub><small>2</small></sub>O<sub><small>2</small></sub> as
acceptor. <i>Catalase</i> must be regarded as exceptional. Where no
ambiguity is caused, the second reactant is not usually named; but where
required to prevent ambiguity, it may be given in parentheses, <i>e.g.</i>
EC 1.1.1.1, <i>alcohol dehydrogenase</i> and EC 1.1.1.2, <i>alcohol
dehydrogenase (NADP).</i></p>
<p><i>(Systematic Names)</i></p>
<p>All enzymes catalysing oxidoreductions should be named <i>oxidoreductases</i>
in the systematic nomenclature, and the names formed on the pattern <i>donor:acceptor
oxidoreductase.</i></p>
<p><b>Rule 18.</b></p>
<p><i>(Systematic Names)</i></p>
<p>For oxidoreductases using NAD or NADP, the coenzyme should always
be named as the acceptor except for the special case of Section 1.6
(enzymes whose normal physiological function is regarded as reoxidation
of the reduced coenzyme). Where the enzyme can use either coenzyme, this
should be indicated by writing NAD(P).</p>
<p><b>Rule 19.</b></p>
<p>Where the true acceptor is unknown and the oxidoreductase has
only been shown to react with artificial acceptors, the word <i>acceptor</i>
should be written in parentheses, as in the case of EC 1.3.99.1, <i>succinate:(acceptor)
oxidoreductase.</i></p>
<p><b>Rule 20.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Oxidoreductases that bring about the incorporation of molecular
oxygen into one donor or into either or both of a pair of donors are
named <i>oxygenase</i>. If only one atom of oxygen is incorporated the
term <i>monooxygenase</i> is used; if both atoms of O<small><sub>2</sub></small>
are incorporated, the term <i>dioxygenase</i> is used.</p>
<p><i>(Systematic Names)</i></p>
<p>Oxidoreductases bringing about the incorporation of oxygen into
one of paired donors should be named on the pattern <i>donor,donor:oxygen
oxidoreductase (hydroxylating).</i></p>

<h4 id="rules2">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules2"></a>Class 2.
</h4>
<p><b>Rule 21.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Only one specific substrate or reaction product is generally
indicated in the recommended names, together with the group donated or
accepted.</p>
<p>The forms <i>transaminase, etc.,</i> may be replaced if desired
by the corresponding forms <i>aminotransferase</i>, <i>etc.</i>.</p>
<p>A number of special words are used to indicate reaction types, <i>e.g.</i>
<i>kinase</i> to indicate a phosphate transfer from ATP to the named
substrate (not 'phosphokinase'), <i>diphosphokinase</i> for a similar
transfer of diphosphate.</p>
<p><i>(Systematic Names)</i></p>
<p>Enzymes catalysing group-transfer reactions should be named <i>transferase</i>
and the names formed on the pattern <i>donor:acceptor
group-transferred-transferase, e.g. ATP:acetate phosphotransferase</i> (EC
2.7.2.1). A figure may be prefixed to show the position to which the
group is transferred, <i>e.g. ATP:</i><small>D-</small><i>fructose
1-phosphotransferase</i> (EC 2.7.1.3). The spelling 'transphorase' should
not be used. In the case of the phosphotransferases, ATP should always
be named as the donor. In the case of the transaminases involving
2-oxoglutarate, the latter should always be named as the acceptor.</p>
<p><b>Rule 22.</b></p>
<p><i>(Systematic Names)</i></p>
<p>The prefix denoting the group transferred should, as far as
possible, be non-committal with respect to the mechanism of the
transfer, <i>e.g. phospho</i>-, rather than <i>phosphate</i>-.</p>

<h4 id="rules3">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules3"></a>Class 3.
</h4>
<p><b>Rule 23.</b></p>
<p><i>(Recommended Names)</i></p>
<p>The direct addition of <i>-ase</i> to the name of the substrate
generally denotes a hydrolase. Where this is difficult, <i>e.g.</i> for
EC 3.1.2.1, the word <i>hydrolase</i> may be used. Enzymes should not
normally be given separate names merely on the basis of optimal
conditions for activity. The acid and alkaline phosphatases (EC
3.1.3.1-2) should be regarded as special cases and not as examples to be
followed. The recommended name <i>lysozyme</i> is also exceptional.</p>
<p><i>(Systematic Names)</i></p>
<p>Hydrolysing enzymes should be systematically named on the pattern
<i>substrate hydrolase</i>. Where the enzyme is specific for the removal
of a particular group, the group may be named as a prefix, <i>e.g.
adenosine aminohydrolase</i> (EC 3.5.4.4). In a number of cases this group
can also be transferred by the enzyme to other molecules, and the
hydrolysis itself might be regarded as a transfer of the group to water.</p>

<h4 id="rules4">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules4"></a>Class 4.
</h4>
<p><b>Rule 24.</b></p>
<p><i>(Recommended Names)</i></p>
<p>The old names <i>decarboxylase, aldolase, etc</i>., are retained;
and <i>dehydratase</i> (not 'dehydrase') is used for the hydro-lyases.
'Synthetase' should not be used for any enzymes in this class. The term
<i>synthase</i> may be used instead for any enzyme in this class (or any
other class) when it is desired to emphasize the synthetic aspect of the
reaction.</p>
<p><i>(Systematic Names)</i></p>
<p>Enzymes removing groups from substrates non-hydrolytically,
leaving double bonds (or adding groups to double bonds) should be called
<i>lyases</i> in the systematic nomenclature. Prefixes such as <i>hydro-,
ammonia-</i> should be used to denote the type of reaction, <i>e.g. </i>L-<i>malate
hydro-lyase</i> (EC 4.2.1.2). Decarboxylases should be regarded as <i>carboxy-lyases</i>.
A hyphen should always be written before <i>lyase</i> to avoid confusion
with hydrolases, carboxylases, <i>etc</i>.</p>
<p><b>Rule 25.</b></p>
<p><i>(Recommended Names)</i></p>
<p>Where the equilibrium warrants it, or where the enzyme has long
been named after a particular substrate, the reverse reaction may be
taken as the basis of the name, using <i>hydratase, carboxylase,
etc., e.g. fumarate hydratase</i> for EC 4.2.1.2 (in preference to
'fumarase', which suggests an enzyme hydrolysing fumarate).</p>
<p><i>(Systematic Names)</i></p>
<p>The complete molecule, not either of the parts into which it is
separated, should be named as the substrate.</p>
<p>The part indicated as a prefix to <i>-lyase</i> is the more
characteristic and usually, but not always, the smaller of the two
reaction products. This may either be the removed (saturated) fragment
of the substrate molecule, as in <i>ammonia-, hydro-, thiol-lyases,
etc</i>. or the remaining unsaturated fragment, <i>e.g.</i> in the case of <i>carboxy-,
aldehyde-</i> or <i>oxo-acid-lyases</i>.</p>
<p><b>Rule 26.</b></p>
<p>Various subclasses of the lyases include a number of strictly
specific or group-specific pyridoxal-5-phosphate enzymes that catalyse <i>elimination</i>
reactions of <span style="font-family: symbol">b</span>- or <span
	style="font-family: symbol">g</span>-substituted <span
	style="font-family: symbol">a</span>-amino acids. Some closely related
pyridoxal-5-phosphate-containing enzymes, <i>e.g. tryptophan
synthase</i> (EC 4.2.1.20) and <i>cystathionine</i> <span
	style="font-family: symbol">b</span>-<i>synthase</i> (EC 4.2.1.22)
catalyse <i>replacement</i> reactions in which a <span
	style="font-family: symbol">b</span>- or <span
	style="font-family: symbol">g</span>-substituent is replaced by a
second reactant without creating a double bond. Formally, these enzymes
appear to be transferases rather than lyases. However, there is evidence
that in these cases the elimination of the <span
	style="font-family: symbol">b</span>- or <span
	style="font-family: symbol">g</span>-substituent and the formation of
an unsaturated intermediate is the first step in the reaction. Thus,
applying rule 14, these enzymes are correctly classified as lyases.</p>

<h4 id="rules5">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules5"></a>Class 5.
</h4>
<p><b>Rule 27.</b></p>
<p>In this class, the recommended names are, in general, similar to
the systematic names which indicate the basis of classification.</p>
<p><b>Rule 28.</b></p>
<p><i>Isomerase</i> will be used as a general name for enzymes in
this class. The types of isomerization will be indicated in systematic
names by prefixes, <i>e.g. maleate cis-trans-isomerase</i> (EC 5.2.1.1),
<i>phenylpyruvate keto-enol-isomerase</i> (EC 5.3.2.1), <i>3-oxosteroid
<span style="font-family: symbol">D</span><sup><small>5</small></sup>- <span
	style="font-family: symbol">D</span><sup><small>4</small></sup>-isomerase</i>
(EC 5.3.3.1). Enzymes catalysing an aldose-ketose interconversion will
be known as <i>ketol-isomerases, e.g. </i>L-<i>arabinose
ketol-isomerase</i> (EC 5.3.1.4). When the isomerization consists of an
intramolecular transfer of a group, the enzyme is named a <i>mutase</i>,
<i>e.g.</i> EC 5.4.1.1, and the <i>phosphomutases</i> in sub-subclass
5.4.2; when it consists of an intramolecular lyase-type reaction, <i>e.g.</i>
EC 5.5.1.1, it is systematically named a <i>lyase (decyclizing)</i>.</p>
<p><b>Rule 29.</b></p>
<p>Isomerases catalysing inversions at asymmetric centres should be
termed <i>racemases</i> or <i>epimerases</i>, according to whether the
substrate contains one, or more than one, centre of asymmetry: compare,
for example, EC 5.1.1.5 with EC 5.1.1.7. A numerical prefix to the word
<i>epimerase</i> should be used to show the position of the inversion.</p>

<h4 id="rules6">
	<span class="linktotop"><a href="javascript: toTop()">Top</a></span>
	<a name="rules6"></a>Class 6.
</h4>
<p><b>Rule 30</b></p>
<p><i>(Recommended Names)</i></p>
<p>Recommended names for enzymes of this class were previously of
the type <i>XY synthetase</i>. However, as this use has not always been
understood and synthetase has been confused with synthase (see Rule 24),
it is now recommended that as far as possible the recommended names
should be similar in form to the systematic names.</p>
<p><i>(Systematic Names)</i></p>
<p>The class of enzymes catalysing the linking together of two
molecules, coupled with the breaking of a diphosphate link in ATP, <i>etc</i>.
should be known as <i>ligases</i>. These enzymes were often previously
known as 'synthetases'; however, this terminology differs from all other
systematic enzyme names in that it is based on the product and not on
the substrate. For these reasons, a new systematic class name was
necessary.</p>
<p><b>Rule 31</b></p>
<p><i>(Recommended Names)</i></p>
<p>The recommended names should be formed on the pattern <i>X-Y
ligase,</i> where X-Y is the substance formed by linking X and Y. In certain
cases, where a trivial name is commonly used for XY, a name of the type
<i>XY synthase</i> may be recommended (<i>e.g.</i> EC 6.3.2.11, <i>carnosine
synthase</i>).</p>
<p><i>(Systematic Names)</i></p>
<p>The systematic names should be formed on the pattern <i>X:Y
ligase (ADP-forming)</i>, where X and Y are the two molecules to be joined
together. The phrase shown in parentheses indicates both that ATP is the
triphosphate involved, and also that the terminal diphosphate link in
broken. Thus, the reaction is X + Y + ATP = X-Y + ADP + P<small><sub>i</sub></small>.</p>
<p><b>Rule 32.</b></p>
<p><i>(Recommended Names)</i></p>
<p>In the special case where glutamine acts as an ammonia-donor,
this is indicated by adding in parentheses (<i>glutamine-hydrolysing</i>)
to a ligase name.</p>
<p><i>(Systematic Names)</i></p>
<p>In this case, the name <i>amido-ligase</i> should be used in the
systematic nomenclature.</p>

</div>

<%@ include file="footer.jsp" %>

</div>
</body>
</html>
