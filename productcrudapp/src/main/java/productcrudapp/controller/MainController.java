package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/index")
	public String home(Model m) {
		
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	
	// Show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Booking Admin");
		return "add_product_form";
	}
	
	// Handle add product form
	
	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/index");
		return redirectView;
	}
	
	// Delete booking handler
	
	@RequestMapping("/delete/{cust_Id}")
	public RedirectView deleteProduct(@PathVariable("cust_Id") int customerId,HttpServletRequest request) {
		this.productDao.deleteProduct(customerId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/index");
		return redirectView;
	}
	
	// Update Booking
	
	@RequestMapping("/update/{cust_Id}")
	public String updateForm(@PathVariable("cust_Id") int pid, Model model) {
		Product product = this.productDao.getProduct(pid);
		model.addAttribute("product", product);
		return "update_form";
	}
	
}
 