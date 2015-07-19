as yet unclassified
userNames
	
	|surnames forenames res|
	forenames := {'Emma' . 'Mia' . 'Hannah' . 'Sofia' . 'Emilia' . 'Anna' . 'Lena' . 'Lea' . 'Emily' . 'Marie' . 'Lina' . 'Leonie' . 'Amelie' . 'Ben' . 'Luis' . 'Paul' . 'Lukas' . 'Jonas' . 'Leon' . 'Finn' . 'Noah' . 'Elias' . 'Luca' . 'Maximilian ' . 'Felix' . 'Max'}.
	
	surnames := {'Müller' . 'Schmidt' . 'Schneider' . 'Fischer' . 'Meyer' . 'Weber' . 'Schulz' . 'Wagner' . 'Becker' . 'Hoffmann' . 'Korhonen' . 'Virtanen' . 'Mäkinen' . 'Nieminen' . 'Mäkelä' . 'Hämäläinen' . 'Laine' . 'Heikkinen' . 'Koskinen' . 'Järvinen' . 'Lehtonen' . 'Lehtinen' . 'Saarinen' . 'Salminen' . 'Heinonen' . 'Niemi'}.

	res := OrderedCollection new.
	1 to: (forenames size)-1 do: [:pos | res add: ((forenames at: pos), ' ',(surnames at: pos)) ].
	^res.