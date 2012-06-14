/* Make a simple knowledge base. Represent some of your favorite books and authors. */
author(terryPratchett, fiction).
author(bruceTate, technical).
author(ianRankin, crime).

book(theColourOfMagic, terryPratchett).
book(theLightFantastic, terryPratchett).
book(guardsGuards, terryPratchett).
book(nightWatch, terryPratchett).

book(sevenLanguagesSevenWeeks, bruceTate).
book(beyondJava, bruceTate).
book(lighterFasterJava, bruceTate).

book(knotsAndCrosses, ianRankin).
book(thaHandingGarden, ianRankin).

/* Find all books in your knowledge base written by one author. */
book(All, terryPratchett).