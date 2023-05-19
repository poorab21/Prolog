disease(corona).
disease(influenza).
corona_is(disease).
influenza_is(disease).
symptomsD(fever,corona).
symptomsD(tiredness,corona).
symptomsD(cough,corona).
symptomsD(cough,influenza).
symptomsD(fever,influenza).
symptomsD(headaches,influenza).
types(corona,6).
diseaseT('229e',corona).
diseaseT(nl63,corona).
diseaseT(oc43,corona).
diseaseT(hku1,corona).
diseaseT(mers-cov,corona).
diseaseT(sars-cov,corona).
diseaseT(a,influenza).
diseaseT(b,influenza).
diseaseT(c,influenza).
diseaseT(d,influenza).
causeD(virus,corona).
causeD(virus,influenza).
symptomsOf(X):-symptomsD(Y,X),write(Y).
typesN(X):-types(X,Y),write(Y).
typesOf(X):-diseaseT(Y,X),write(Y).
causesOf(X):-causeD(Y,X),write(Y).
symptoms:-	
		write('Enter Symptom:'),nl,
		read(X),nl,
		write('Enter Symptom:'),nl,
		read(Y),nl,
		write('Enter Symptom:'),nl,
		read(Z),nl,
		symptomsD(X,influenza),symptomsD(Y,influenza),symptomsD(Z,influenza),write('Disease is Influenza');symptomsD(X,corona),symptomsD(Y,corona),symptomsD(Z,corona),write('Disease is Corona').