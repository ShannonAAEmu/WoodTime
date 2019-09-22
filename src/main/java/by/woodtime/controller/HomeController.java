package by.woodtime.controller;

import by.woodtime.dao.Dao;
import by.woodtime.model.Product;
import by.woodtime.model.SiteText;
import by.woodtime.model.Workshop;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    private Dao dao = new Dao();

    @RequestMapping("/")
    public String home(Model model) {
        List<SiteText> siteTextListRu = dao.getSiteTextList("ru");
        List<Workshop> workshopListRu = dao.getWorkshopList("ru");
        List<Product> productListRu = dao.getProductList("ru");

        model.addAttribute("siteTextRu", siteTextListRu);
        model.addAttribute("workshopsRu", workshopListRu);
        model.addAttribute("productsRu", productListRu);
        return "home";
    }

    @RequestMapping("/en")
    public String homeEn(Model model) {
        List<SiteText> siteTextListEn = dao.getSiteTextList("en");
        List<Workshop> workshopListEn = dao.getWorkshopList("en");
        List<Product> productListDe = dao.getProductList("en");

        model.addAttribute("siteTextEn", siteTextListEn);
        model.addAttribute("workshopsEn", workshopListEn);
        model.addAttribute("productsEn", productListDe);
        return "home_en";
    }

    @RequestMapping("/de")
    public String homeDe(Model model) {
        List<SiteText> siteTextListDe = dao.getSiteTextList("de");
        List<Workshop> workshopListDe = dao.getWorkshopList("de");
        List<Product> productListDe = dao.getProductList("de");

        model.addAttribute("siteTextDe", siteTextListDe);
        model.addAttribute("workshopsDe", workshopListDe);
        model.addAttribute("productsDe", productListDe);
        return "home_de";
    }
}
