/* Make a knowledge base representing musicians and instruments. Also represent musicians and their genre of music */

instrument(guitar).
insrument(drums).
instrument(keyboards).

musician(slash, guitar).
musician(vai, guitar).
musician(animal, drums).

/* Find all musicians who play the guitar */
musician(Name, guitar).