package com.banque2.controleur;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.banque2.modele.PojoClient;
import com.banque2.services.ServiceDaoAdministrateur;

@Controller
public class GestionnaireGetAdmin {

	@Autowired
	private ServiceDaoAdministrateur serviceDaoAdministrateur;
	
	//ADMINISTRATEUR
	@RequestMapping(value = {"/secureAdmin"}, method = RequestMethod.GET)
	public String getLogAdmin(ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_auth";
	}
	
	
	@RequestMapping(value = {"/newAdmin"}, method = RequestMethod.GET)
	public String getAdminCreerCompte() {
		return "/admin/admin_addAdmin";
	}
	
	
	@RequestMapping(value = {"/showAccount"}, method = RequestMethod.GET)
	public String getAdminshowAccount(
			HttpServletRequest request,
			ModelMap listeElement) {
		String id = request.getParameter("id");
		System.out.print(id);
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_showAccount";
	}
	
	@RequestMapping(value = {"/homeAdmin"}, method = RequestMethod.GET)
	public String getAdminHome(ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_home";
	}
			
	@RequestMapping(value = {"/showLog"}, method = RequestMethod.GET)
	public String getAdminLog(ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_log";
	}
	
	@RequestMapping(value = {"/newClient"}, method = RequestMethod.GET)
	public String getAdminAddPers(ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_newClient";
	}
	
	@RequestMapping(value = {"/showAllClient"}, method = RequestMethod.GET)
	public String getAdminAllClient(
			ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		ArrayList<PojoClient> clients = (ArrayList<PojoClient>) serviceDaoAdministrateur.getAllClient();
		listeElement.addAttribute("clients", clients);
		return "/admin/admin_showAllClient";
	}
	
	
	@RequestMapping(value = {"/adminProfil"}, method = RequestMethod.GET)
	public String getAdminAddProfil(ModelMap listeElement) {
		listeElement.addAttribute("username", "admin");
		return "/admin/admin_adminProfil";
	}
	
}
