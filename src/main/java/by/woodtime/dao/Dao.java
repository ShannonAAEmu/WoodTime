package by.woodtime.dao;

import by.woodtime.model.Product;
import by.woodtime.model.SiteText;
import by.woodtime.model.Workshop;

import java.util.ArrayList;
import java.util.List;

public class Dao {

    private String[] pageTextRu = new String[]{
            "ООО “ВУДТАЙМ”", "О нас", "Продукция", "Портфолио", "Контакты",
            "Добро пожаловать в “ВУДТАЙМ”", "Мы деревообрабатывающая компания, занимающаяся комплексной обработкой древесины: от заготовки сырья до производства столярных и мебельных изделий",
            "Узнать больше", "У нас есть то, что вам нужно!", "Персонал предприятия: 80 человек",
            "В настоящее время производственная структура состоит из 4 цехов:",
            "Наша продукция", "Вся продукция производится из массива ДУБа",
            "Заинтересованы в одном из наших продуктов?", "Заказать бесплатный звонок сейчас",
            "Мы готовы ответить на любые ВАШИ вопросы!", "Звонки: пн-пт с 9:00 до 18:00. Выходные - сб-вс. Письма в любое время суток."
    };

    private String[] pageTextEn = new String[]{
            "LLC «WOODTIME»", "ABOUT", "PRODUCTS", "PORTFOLIO", "CONTACT",
            "Welcome to the WoodTime Company", "We are a woodworking company engaged in integrated wood processing: from the procurement of raw materials to the manufacture of carpentry and furniture products",
            "Find Out More", "We've got what you need!", "Personnel of the enterprise: 80 people",
            "Currently, the production structure consists of 4 production workshops:",
            "Our products", "All products are made of solid Oak",
            "Interested in one of our products?", "Order a free call now",
            "We are ready to answer any YOUR questions!", "Calls: Mon-Fri from 9:00 to 18:00. Weekends - Sat-Sun. Letters at any time of the day."
    };

    private String[] pageTextDe = new String[]{
            "«WOODTIME» GMBH", "Über uns", "Produkte", "Portfolio", "KONTAKTE",
            "Willkommen bei der WoodTime Company", "Wir sind eine Holzbearbeitungsfirma, die sich mit der integrierten Verarbeitung von Holz beschäftigt: von der Beschaffung von Rohstoffen bis zur Herstellung von Zimmerei und Möbeln",
            "Erfahren Sie mehr", "Wir haben was Sie brauchen!", "Personal des Unternehmens: 80 Personen",
            "Derzeit besteht die Produktionsstruktur aus 4 Produktionswerkstätten:",
            "Unsere Produkte", "Alle Produkte sind aus massiver Eiche gefertigt",
            "Interessiert an einem unserer Produkte?", "Bestellen Sie jetzt einen kostenlosen Anruf",
            "Wir sind bereit, Ihre Fragen zu beantworten!", "Anrufe: Mo-Fr von 9.00 bis 18.00 Uhr. Wochenenden - Sa-So. Briefe zu jeder Tageszeit."
    };

    private String[] workshopsRu = new String[]{
            "Деревообрабатывающий цех", "Столярно-мебельный цех" + "<br>(общей площадью 7 000 м2)",
            "Лесопильный цех", "Сушильный цех"};

    private String[] workshopsEn = new String[]{
            "Carpentry and furniture shop" + "<br>(total area 7 000 m2)", "Woodworking shop",
            "Sawmill shop", "Drying shop"};

    private String[] workshopsDe = new String[]{
            "Tischler-Möbel-Werkstatt" + "<br>(gesamtfläche von 7.000 m2)", "Lüften Werkstatt",
            "Woodshop", "Sägehalle"};

    private String[] productsRu = new String[]{
            "Пиломатериалы необрезные и обрезные", "Мебельная заготовка",
            "Паркетная заготовка", "Пиленый шпон (ламель)",
            "Мебельный щит", "Столешницы (слэбы)",
            "Мебель", "Межкомнатные двери"};

    private String[] productsEn = new String[]{
            "Lumber unedged and edged", "Sawn veneer (lamella)",
            "Table tops (slabs)", "Furniture blank",
            "Furniture board", "Parquet blank",
            "Interior door", "Furniture"};

    private String[] productsDe = new String[]{
            "Holz ungeschnitten und abgeschnitten", "gesägte Furnier (Lamelle)",
            "Tischplatte (Slabs)", "Möbel-Werkstück",
            "Holzschnitzerei", "Möbel Schild",
            "Innentüren", "Möbel"};

    public List<SiteText> getSiteTextList(String lang) {
        List<SiteText> textList = new ArrayList<SiteText>();
        if (lang.equals("ru")) {
            for (String s : pageTextRu) {
                textList.add(new SiteText(s));
            }
        } else if (lang.equals("en")) {
            for (String s : pageTextEn) {
                textList.add(new SiteText(s));
            }
        } else if (lang.equals("de")) {
            for (String s : pageTextDe) {
                textList.add(new SiteText(s));
            }
        }
        return textList;
    }

    public List<Workshop> getWorkshopList(String lang) {
        List<Workshop> workshopList = new ArrayList<Workshop>();
        if (lang.equals("ru")) {
            for (String workshopName : workshopsRu) {
                workshopList.add(new Workshop(workshopName));
            }
        } else if (lang.equals("en")) {
            for (String workshopName : workshopsEn) {
                workshopList.add(new Workshop(workshopName));
            }
        } else if (lang.equals("de")) {
            for (String workshopName : workshopsDe) {
                workshopList.add(new Workshop(workshopName));
            }
        }
        return workshopList;
    }

    public List<Product> getProductList(String lang) {
        List<Product> productList = new ArrayList<Product>();
        if (lang.equals("ru")) {
            for (String productName : productsRu) {
                productList.add(new Product(productName));
            }
        } else if (lang.equals("en")) {
            for (String productName : productsEn) {
                productList.add(new Product(productName));
            }
        } else if (lang.equals("de")) {
            for (String productName : productsDe) {
                productList.add(new Product(productName));
            }
        }
        return productList;
    }

}
