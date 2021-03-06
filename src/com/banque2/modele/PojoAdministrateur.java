package com.banque2.modele;


public class PojoAdministrateur {
	
		private int identifiant;
		private String nom;
		private String prenom;
		private String courriel;
		private String mdp;
		private int key;
		
		public PojoAdministrateur() {
			// TODO Auto-generated constructor stub
		}
		
		public int getKey() {
			return key;
		}

		public void setKey(int key) {
			this.key = key;
		}


		public int getIdentifiant() {
			return identifiant;
		}



		public String getCourriel() {
			return courriel;
		}

		public void setCourriel(String courriel) {
			this.courriel = courriel;
		}

		@Override
		public String toString() {
			return "PojoAdministrateur [identifiant=" + identifiant + ", nom=" + nom + ", prenom=" + prenom
					+ ", courriel=" + courriel + ", mdp=" + mdp + ", key=" + key + "]";
		}

		public void setIdentifiant(int id) {
			this.identifiant = id;
		}

		public String getNom() {
			return nom;
		}

		public void setNom(String nom) {
			this.nom = nom;
		}

		public String getPrenom() {
			return prenom;
		}

		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}

		public String getMdp() {
			return mdp;
		}

		public void setMdp(String mdp) {
			this.mdp = mdp;
		}
				

	


}
