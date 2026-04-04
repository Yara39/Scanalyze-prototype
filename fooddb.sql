-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2026 at 08:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_products`
--

CREATE TABLE `food_products` (
  `code` int(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `ingredients` varchar(350) DEFAULT NULL,
  `allergens` varchar(80) DEFAULT NULL,
  `quantity` varchar(40) DEFAULT NULL,
  `serving_size` varchar(40) DEFAULT NULL,
  `nutriscore` varchar(10) DEFAULT NULL,
  `nova` int(1) DEFAULT NULL,
  `kcal` double(6,4) DEFAULT NULL,
  `fat` double(5,3) DEFAULT NULL,
  `saturated_fat` double(5,3) DEFAULT NULL,
  `crabs` double(5,3) DEFAULT NULL,
  `sugars` double(5,3) DEFAULT NULL,
  `proteins` double(5,3) DEFAULT NULL,
  `salt` double(5,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_products`
--

INSERT INTO `food_products` (`code`, `name`, `brand`, `categories`, `ingredients`, `allergens`, `quantity`, `serving_size`, `nutriscore`, `nova`, `kcal`, `fat`, `saturated_fat`, `crabs`, `sugars`, `proteins`, `salt`) VALUES
(5772, 'Vanilla Almond Milk', 'Blue Diamond', 'Dairies, Milks (liquid and powder), Milks', 'None', 'None', 'None', '0g', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(14434, 'Almond breeze vanilla yogurt', 'Blue diamond', 'Dairies, Fermented foods, Fermented milk products, Desserts, Dairy desserts, Fermented dairy desserts, Yogurts', 'None', 'None', 'None', '150.0g', 'unknown', 0, 99.9999, 5.000, 0.000, 19.000, 11.000, 2.000, 0.000),
(43014, 'Milk chocolate almond toffe crunch', 'None', 'None', 'None', 'None', '8 oz', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(130707, 'Unsweetened Almond Milk', 'Magnum', 'None', 'None', 'None', 'None', '1 portion (250 ml)', 'unknown', 0, 18.0000, 1.400, 0.100, 0.500, 0.500, 0.600, 0.000),
(148214, 'Almond milk', 'Marks & Spencers', 'Beverages and beverages preparations, Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based mi', 'Water, Almonds (2%), Calcium, Acidity Regulator: E340, Stabiliser: E418, E417, Sunflower Lecithin, Sea Salt, Potassium, lodide, Vitamin B12, Vitamin D.', 'Nuts', '1 L', '1 serving (100 ml)', 'b', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(300148, 'Unsweetened Vanilla Almond Milk', 'Member\'s Mark', 'Beverages and beverages preparations, Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based mi', 'sugar, bleached wheat flour, water, soybean oil, chocolate chips, eggs, nonfat dry milk, cocoa, leavening, salt, soy lecithin, whey protein concentrate, natural and artificial flavors, corn starch, sodium stearoyl lactylate, potassium sorbate', 'Eggs, Gluten, Milk, Soybeans', 'None', '1 portion (1 cup)', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(508063, 'Matcha Almond Beverage', 'Trader Joe’s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'Almond base (filtered water, almonds), cane sugar, matcha green tea powder, natural flavors, guar gum, sea salt, sunflower lecithin, gellan gum.', 'Nuts', '946', '240ml', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(508575, 'Almond Beverage Original Unsweetened', 'Trader Joe\'s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'Almond base (filtered water, almonds), tricalcium phosphate, sea salt, gellan gum, dipotassium phosphate, xanthan gum, sunflower lecithin, vitamin a palmitate, vitamin d2, d-alpha tocopherol (vitamin e).', 'Nuts', '1.89L', '240 ml', 'b', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(532143, 'ALMOND beverage UNSWEETENED ORIGINAL', 'Trader Joe\'s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'almond base (filtered water, almonds), tricalcium phosphate, sea salt, gellan gum, dipotassium phosphate, xanthan gum, sunflower lecithin, vitamin a palmitate, ergocalciferol (vitamin d2), d-alpha tocopherol (vitamin e),', 'Nuts', 'None', '1 portion (1 cup)', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(560160, 'Premium Milk & Dark Chocolate Covered Almonds', 'Trader Joe\'s', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Chocolate candies, Bonbons, Chocolate covered nuts, Chocolate-covered-almonds', 'MILK CHOCOLATE (SUGAR, COCOA BUTTER, CHOCOLATE LIQUOR, WHOLE MILK POWDER, SOY EDITHIL NATURAL FLAVOR), DARK CHOCOLATE (SUGAR, CHOCOLATE LIQUOR, COCOA BUTTER, MILKFAT, SOY LECITHIL FLAVOR), DRY ROASTED ALMONDS, DEXTRIN (CORN), CONFECTIONER\'S SHELLAC. CONTAINS MILK, ALMONDS, SOY. &lt;AY CONTAIN TRACES OF PEANUTS, PECANS, CASHEWS, HAZELNUT, WALNUTS, W', 'Milk, Nuts, Soybeans', '16 oz (1 lb) 454 g', '8 pieces (30 g)', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(649575, 'Organic Almond beverage Unsweetened Original', 'Trader Joe\'s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'WATER, ORGANIC ALMONDS, SEA SALT, TRICALCIUM PHOSPHATE, GELLAN GUM, ORGANIC LOCUST BEAN GUM, VITAMIN A PALMITATE, VITAMIN D2, DL-ALPHA-TOCOPHEROL ACETATE (VITAMIN E), VITAMIN B12.', 'Nuts', '32 fl oz (946 mL)', '1 cup (240mL)', 'b', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(750974, 'Almond, Hazelnut & Pistachio Milk Chocolate Buttons', 'Marks & Spencer', 'Snacks, Snacks sucrés, Cacao et dérivés, Confiseries, Confiseries chocolatées, Bonbons de chocolat', 'None', 'None', '30 g', 'None', 'e', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(939966, 'Trader joe\'s, low fat vanilla yogurt with almonds, vanilla', 'Trader Joe\'s', 'Dairies, Fermented foods, Fermented milk products, Desserts, Dairy desserts, Fermented dairy desserts, Yogurts, Low-fat yogurts', 'Low fat vanilla yogurt (grade a pasteurized reduced fat milk, vanilla blend [naturally milled cane sugar, water, corn starch, natural flavor], inulin(dietary fiber], non fat milk, kosher gelatin, live and active cultures[s. thermophilus, l.bulgaricus, l. acidophilus, bifidus and l. casei]), toasted almonds (dry roasted blanched sliced almonds).', 'Milk, Nuts', 'None', '1 CONTAINER (130 g)', 'c', 4, 99.9999, 5.380, 1.540, 15.380, 13.080, 4.620, 0.135),
(947404, 'Almond Beverage Original', 'Trader Joe\'s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'ALMOND BASE (FILTERED WATER, ALMOND), CANE SUGAR, TRICALCIUM PHOSPHATE, SEA SALT, GELLAN GUM, SUNFLOWER LECITHIN, LOCUST BEAN GUM, VITAMIN A PALMITATE, ERGOCALCIFEROL (VITAMIN D2), DL-ALPHA TOCOPHEROL ACETATE (VITAMIN E).', 'Nuts', '1.89L', 'None', 'c', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(947411, 'Almond Beverage Vanilla Unsweetened', 'Trader Joe\'s', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'ALMOND BASE been a (FILTERED WATER, ALMOND), TRICALCIUM PHOSPHATE, SEA SALT, NATURAL FLAVORS, GELLAN GUM, SUNFLOWER LECITHIN, LOCUST BEAN GUM, VITAMIN A PALMITATE, ERGOCALCIFEROL (VITAMIN D2), DL-ALPHA TOCOPHEROL ACETATE (VITAMIN E). good drin SHAKE W PE KEEP REF USE WIT AFTE CONTAINS ALMONDS. NOT FOR U FOR', 'Nuts', 'None', '240ml', 'b', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(1001853, 'Unsweetened Almond Milk Low Fat', 'Blue Diamond Allonds', 'None', 'None', 'None', 'None', '200.0g', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(1764994, 'Milk Chocolate & Almond Indulgence', 'Sainsbury\'s', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 99.9999, 21.700, 13.200, 29.100, 26.600, 4.300, 0.150),
(2114675, 'Open Nature Vanilla Almond Milk', 'None', 'None', 'almond blend (filtered water, almonds), sugar, calcium carbonate, sea salt, natural vanilla flavor, locust bean gum, sunflower lecithin, gellan gum, vitamin e acetate, vitamin a palmitate, vitamin d2,', 'Nuts', 'None', 'None', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(2187563, 'Milk chocolate almond', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(2465647, 'Classic Organic Almond Milk Chocolate Bar, Classic', 'Taza chocolate', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Chocolate candies', 'Organic Coconut Sugar, Organic Cocoa Butter, Organic Cacao Beans, Organic Blanched Almond Flour, Organic Sunflower Lecithin And Sea Salt.', 'Nuts', '2.5 oz/70 g', '0.5 BAR (35 g)', 'e', 3, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(2527244, 'VEGGO Organic Almond Drink', 'Veggo', 'Beverages and beverages preparations, Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based mi', 'Water, organic almonds (2.3%), organic raw cane sugar, acidity regulator: calcium carbonate, sea salt, stabilisers (carrageean, gellan gum), emulsifier (organic sunflower lecithin). For allergens, see ingredients in bold. ALLERGIES: contains almonds and may contain traces of hazelnuts. Wheat & gluten free. Dairy&lactose free. Low in fat. Keep in a ', 'Gluten, Nuts', '1L', '100g', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(3091601, 'Lowfat greek yogurt, caramelized almonds', 'Muller', 'Dairies, Fermented foods, Fermented milk products, Desserts, Dairy desserts, Fermented dairy desserts, Yogurts', 'Lowfat yogurt (cultured pasteurized grade a reduced fat milk, milk protein concentrate, sugar, whey protein concentrate, kosher gelatin), caramelized almonds(almonds, sugar, glucose syrup).', 'Milk, Nuts', 'None', '1 CONTAINER (150 g)', 'b', 4, 99.9999, 5.330, 1.330, 13.330, 11.330, 8.670, 0.150),
(3415900, 'Symphony creamy milk chocolate almonds & toffee chips', 'None', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Chocolate candies', 'Milk chocolate (sugar; milk; cocoa butter; chocolate; milk fat; soy lecithin; pgpr, emulsifier; vanillin, artificial flavor); sugar; almonds (roasted in cocoa butter and/or sunflower oil); palm oil; dairy butter (milk); salt; artificial flavor; soy lecithin.', 'Milk, Nuts, Soybeans', 'None', '1.5 ONZ (42 g)', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(3634592, 'Califa Farms Almond Milk', 'Califia Farms', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(6140726, 'bettergoods almond milk', 'Walmart', 'None', 'None', 'None', '1', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(6870973, 'Almond milk', 'Blue Diamond', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Uns', 'ALMONDMILK (FILTERED WATER, _ALMONDS_), EVAPORATED CAN JUICE, CALCIUM CARBONATE, SEA SALT, POTASSIUM CITRATE, CARRAGEENAN, SUNFLOWER LECITHIN, VITAMIN A PALMITATE, VITAMIN D2 AND D-ALPHA-TOCOPHEROL (NATURAL VITAMIN E).', 'Nuts', '32 Fl Ounces, 946 mL', '1 cup (240 mL)', 'c', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(8771130, 'Almond unsweetened milk', 'Kirkland, Kirkland Signature', 'Beverages and beverages preparations, Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based mi', 'Almond base (water, almonds), calcium carbonate, sea salt, sunflower lecithin, locust bean gum or guar gum, gellan gum, DL-alpha tocopheryl acetate (vitamin E), zinc gluconate, vitamin A palmitate, ergocalciferol (vitamin D2), riboflavin (vitamin B2), cyanocobalamin (vitamin B12). Contains: almonds.', 'Nuts', '946 mL', '240mL', 'b', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(9695913, 'Milk Chocolate Covered Almonds', 'Choceur', 'None', 'milk chocolate, sugar, cocoa butter, whole milk powder, chocolate liquor, soy lecithin, vanilla, almonds', 'Milk, Nuts, Soybeans', 'None', '30g', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(10418017, 'Almond Toffee In Milk Chocolate', 'Enstrom', 'None', 'None', 'None', 'None', '1 piece (14 g)', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(12443512, 'almond milk organic unsweetened', 'MALK', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(17821300, 'non dairy creamer almond milk and oat milk', 'None', 'None', 'almond milk (water, almonds), oat milk (water, oat flour), sugar, coconut oil, pea protein, potassium citrate, baking soda, natural flavor, gellan gum, guar gum (from the guar plant). contains: almonds. hazelnut.', 'Nuts', 'None', 'None', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(20098766, 'Chocolate Almond Milk', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(20098773, 'Vanilla almond milk', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(20098780, 'Original Almond Milk', 'Lidl', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(20348557, 'Almond Ice Cream', 'Bon Gelati, Lidl', 'Desserts, Tiefkühlprodukte, Tiefkühl-Desserts, Speiseeis und Sorbets, Speiseeis, Eis am Stiel, Eis am Stiel überzogen mit Schokolade, Vanilleeis am Stiel überzogen mit Milchschokolade und Mandeln', 'skimmed milk, sugar, cocoa butter¹, whey product, whole milk powder, coconut fat, 6% almond pieces, glucose syrup, cocoa mass¹, glucose-fructose syrup, butterfat, emulsifiers: mono - and diglycerides of fatty acids*, lecithins (sunflower), polyglycerol polyricinoleate, stabilizers: locust bean gum, guar gum, coloring carrot concentrate, natural bou', 'Milch, Schalenfrüchte, Soja', '84g', '84 g', 'e', 4, 99.9999, 22.500, 13.700, 29.700, 26.900, 5.600, 0.078),
(20349325, 'Almond sweetened milk', 'Vemondo', 'None', 'None', 'None', 'None', '1 portion (250 ml)', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(20866334, 'Milk chocolate worh roasted almond pieces candy bar', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(25140019, 'Milk Almond', 'Aldi', 'Snacks, Snacks sucrés, Cacao et dérivés, Chocolats, Chocolats au lait, Chocolats aux amandes, Chocolats au lait aux amandes', 'Sugar, _ALMONDS_ (27 % ), Cocoa Butter, High Fat _Milk_ Powder, Cocoa Mass, Whole _Milk_ Powder, Skimmed _Milk_ Powder, Lactose (_Milk_), Emulsifier Lecithins (_Soya_), Vanilla Extract.', 'Lait, Fruits à coque, Soja', '200 g', '29g', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(25418996, 'Unsweetened Almond Milk', 'Actileaf', 'None', 'None', 'None', 'None', '100ml', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(26033297, 'Milk Almond Chocolate', 'Choceur,Aldi', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Bars, Chocolate candies, Chocolates, Bars-covered-with-chocolate', 'Sugar, Almonds, Cocoa Butter, Cream Powder (11.6%)(From Milk), Cocoa Mass, Full Cream Milk Powder, Whey Powder (From Milk), Lactose (From Milk), Emulsifier (322 From Soy), Vanilla Extract. Creamy Milk Chocolate (73%) Contains 31% Cocoa Solids Minimum and 20% Milk Solids Minimum. CONTAINS ALMONDS, MILK AND SOY.', 'Milk, Nuts, Soybeans', '200g', '28.6g', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(26301013, 'Almond Coated in Milk Chocolate Ice Cream', 'Utopia', 'None', 'None', 'None', 'None', '1 bar (75 g)', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(26319308, 'Almond milk', 'Inner Goodness', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'None', 'None', '1 l', 'None', 'b', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(29397938, 'Swiss Almond And Milk Chocolate Nutty Clouds', 'Marks & Spencer', 'Snacks, Sweet snacks, Cocoa and its products, Chocolates, Chocolate-nut-snack', 'Not Suitable nut allergy for Almonds Slivers (30%). • Sugar Cocoa Butter Dried Whole Milk Cocoa Mass - Ground Hazelnuts Emulsifier: • • Lecithins (Soya) Natural Flavouring. Milk Chocolate contains Cocoa Solids 35% minimum, Milk Solids 21% minimum.', 'Milk, Soybeans', 'None', '0.2 bag (25 g)', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(29398010, 'Pretzel, Caramel, Sea Salt & Almond Milk Chocolate', 'M&S Food', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Chocolate candies, Bars, Chocolates, Milk chocolates, Candy chocolate bars', 'Sugar · \r\nCocoa Butter · \r\nDried Whole Milk · \r\nCocoa Mass · \r\nWheatflour · \r\nAlmonds · \r\nHoney · \r\nSea Salt · \r\nEmulsifier: Sunflower Lecithin · \r\nButter (Milk) · \r\nSalt · \r\nSunflower Oil ·\r\nGlucose Syrup · \r\nNatural Flavouring · \r\nMalted Wheatflour · \r\nDried Egg White · \r\nYeast · \r\nAcidity Regulator: E524\r\n\r\nMilk Chocolate contains Cocoa Solids 3', 'Eggs, Gluten, Milk, Nuts', '180 g', '20g', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(29457847, 'Raisins, Almonds & Hazlenuts In milk Chocolate', 'Marks & Spencers', 'Snacks, Sweet snacks, Cocoa and its products, Chocolates', 'Nut Sugar Cocoa Butter Dried Whole Milk - Cocoa Mass Raisins Hazelnuts allergy Almonds Emulsifier: Sunflower Lecithin. Natural Flavouring.', 'None', 'None', 'None', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(29465279, 'Orange, Almond Brittle & Shortbread Milk Chocolate', 'Marks & Spencers', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(30666313, 'Plain unsweetened almond milk yogurt', 'None', 'None', 'None', 'None', '16 oz', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(32011869, 'Almond & coconut creamer - French Vanilla', 'Nut Pods', 'Plant-based foods and beverages, Dairy substitutes, Milk substitutes, Creamer', 'almond+ coconut', 'Nuts', '750 ml', '15 ml', 'a', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(36450798, 'Almond Milk Creamer', 'Silk', 'Plant-based foods and beverages, Dairy substitutes, Milk substitutes, Creamer', 'None', 'None', 'None', 'None', 'c', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(51401535, 'Natural bliss Almond milk', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(67243136, 'Milk Chocolate with almond', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(68864613, 'alpro almond milk', 'Alpro', 'None', 'water, almond (2,3%), calcium (calcium carbonate), sea salt, stabilisers (guar gum, geilan gum), natural flavouring emulsifier (lecithins), vitamins b12, d2, e, potassium iodide, for allergens, see ingredients in bold, may contain traces of nuts (no peanuts), free from dairy and gluten, naturally lactose free,', 'Gluten, Nuts', 'None', 'None', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(74615643, 'Black sugar milk tea almond', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(76145759, 'Toblerone', 'Mondélez, Toblerone', 'Snacks, Sweet snacks, Cocoa and its products, Chocolates, Milk chocolates, Chocolates with almonds, Flavoured chocolates, Flavoured milk chocolates, Milk chocolate bar with nougat', 'sugar, whole milk powder, cocoa butter, cocoa mass, honey (3%), butter oil, almonds (1,6%), emulsifier (soy lecithin), egg, flavoring, cocoa: 28 %,', 'Eggs, Milk, Nuts, Soybeans', '35 g', '35 g', 'e', 4, 99.9999, 29.500, 18.000, 60.500, 59.500, 5.600, 0.150),
(78797703, 'Unsweetened almond milk', 'Silk', 'None', 'None', 'None', 'None', '250.0g', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(85237285, 'Almond milk iced latte coffee beverage', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(85399549, 'Almond milk', 'Danone', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(88081878, 'Trader Joes Almond Cashew Macadamia Nut Milk', 'Trader Joes', 'Plant-based foods and beverages', 'None', 'None', 'None', '240.0g', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(94314243, 'Whittakers Almond Gold', 'Whittaker\'s', 'Snacks, Sweet snacks, Cocoa and its products, Confectioneries, Chocolate candies, Bars, Candy chocolate bars, Cacao-et-dérivés, Confiseries-chocolatées, Snacks-sucrés', 'Milk chocolate [sugar, cocoa solids 33% (cocoa butter and cocoa mass), NZ milk powder 30%, emulsifier (soy lecithin), vanilla flavour]; roasted almonds 26%  \r\n\r\nContains: milk, almonds, soy. May contain Peanuts, other tree nuts, gluten', 'Milk, Nuts, Soybeans', '45g', '45g', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(97551331, 'Silk Unsweet Almond Milk', 'Silk', 'Plant-based foods and beverages, Beverages, Plant-based foods, Dairy substitutes, Milk substitutes, Nuts and their products, Plant-based beverages, Plant-based milk alternatives, Nut-based drinks, Alm', 'None', 'None', 'None', 'None', 'b', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(417296003, 'Milk Chocolate With Caramelized Almonds', 'Ritter Sport,  Alfred Ritter Gmbh & Co. Kg', 'Null', 'SUGAR, COCOA BUTTER, COCOA MASS, WHOLE MILK POWDER, ALMONDS (7.7%), LACTOSE, SKIM MILK POWDER, BUTTERFAT, EMULSIFIER: LECITHIN (SOY), NATURAL FLAVOR.', 'Milk, Nuts, Soybeans', '25 g', '25g', 'e', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(1908000079, 'Milk Chocolate Almonds', 'None', 'None', 'None', 'None', 'None', 'None', 'unknown', 0, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000),
(2147483647, 'Organic Milk Chocolate Almonds Confections', 'Sunridge Farms', 'None', 'Organic milk chocolate+ (org. evaporated cane sugar, org. cocoa butter, org. whole milk, org., unsweetened chocolate, org. soy lecithin [an emulsifier org. vanilla), organic dry roasted almonds, pure food.', 'Milk, Soybeans', 'None', '40 g (40 g)', 'unknown', 4, 0.0000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients_info`
--

CREATE TABLE `ingredients_info` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_products`
--
ALTER TABLE `food_products`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ingredients_info`
--
ALTER TABLE `ingredients_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredients_info`
--
ALTER TABLE `ingredients_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
