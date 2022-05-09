//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Olegas Sevcenko on 2022-04-22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case salad = "Salad"
    case meal = "Meal"
    case dessert = "Dessert"
    case drink = "Drink"
}

struct Recipe: Identifiable, Codable {
    var id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Teriyaki Jackfruit and Rice Stacks",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159753/Teriyaki-Jackfruit-and-Rice-Stacks-wordpress-360x270-c.jpg", description: "Cooked rice patties serve as buns for these teriyaki-infused jackfruit burgers. The meaty texture of jackfruit absorbs the savory sauce and perfectly complements the tender chunks of sweet potato and hearty adzuki beans that are thrown into the mix. Crisp lettuce leaves add brightness while savory rounds of nori seal in all the delicious flavors. They’re almost too pretty to eat—but not quite! ",
            ingredients: "3 cups dry short-grain brown rice\n2 tablespoons arrowroot powder\n1 15-oz. can jackfruit, rinsed and drained\n3 tablespoon oil-free teriyaki sauce, plus more for serving\n2 cups finely chopped onions\n2 cups finely chopped sweet potato\n6 cloves garlic, minced\n1 tablespoon grated fresh ginger\n1 15-oz. can adzuki beans, rinsed and drained (1½ cups)\n4 nori sheets, each cut into four 2½ -inch-diameter rounds\n6 romaine lettuce leaves, cut into 2-inch pieces",
            directions: "In a saucepan combine rice and 6 cups water. Bring to boiling; reduce heat. Cover and simmer 45 minutes. Remove from heat; cool slightly. Fluff with a fork. Stir in arrowroot powder. Let stand until cool enough to handle.\nLine a baking sheet with a silicone baking mat. Place a 2½-inch round patty mold or cookie cutter on baking sheet. Fill the mold with ⅓ cup rice; press with the back of a spoon to compact. Carefully remove mold. Repeat to make a total of 16 patties. Cover and refrigerate at least 1 hour.\nPreheat oven to 400°F. Line a second baking sheet with parchment paper.\nIn a bowl shred jackfruit with a fork. Add 2 tablespoons of the teriyaki sauce; mix well. Spread jackfruit on second baking sheet. Bake 20 minutes. Remove from oven; let cool.\nIn a skillet combine the next four ingredients (through ginger) and ¼ cup water. Cook over medium 10 to 15 minutes or until sweet potato is tender, stirring occasionally. Stir in jackfruit, beans, and the remaining 1 tablespoon teriyaki sauce. Line baking sheet with a fresh sheet of parchment paper.\nOn prepared baking sheet, shape jackfruit mixture into eight 2½-inch patties, using ⅓ cup mixture for each patty. Bake 20 minutes. Remove from oven and let stand 5 minutes. Turn burgers over and bake 20 minutes more. Turn oven off and leave burgers in oven to keep warm.\nHeat a large nonstick skillet over medium. Add rice patties in batches; cook until lightly browned, turning once.\nFor each burger, place a rice patty on a nori round. Top with a few romaine pieces and a jackfruit patty. Top with a second rice patty, drizzle lightly with teriyaki sauce, and add a second nori round.\n",
            category: "Meal",
            datePublished: "2022-01-28",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/teriyaki-jackfruit-and-rice-stacks/"
        ),
        Recipe(
            name: "Strawberry Dessert Pizza",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/157601/Strawberry-Dessert-Pizza-wordpress-360x270-c.jpg", description: "Pizza for dessert? That’s right! This healthy treat pairs jammy strawberries with a lightly sweetened cashew-cream sauce for a summertime snack that hits the spot. A sprinkle of fresh mint adds a pretty pop of contrasting color. Partially baking the crust before adding toppings ensures this fruity pizza stays crisp. Eat it with a fork or your fingers.\nTip: To soak cashews, place them in a small bowl; add enough boiling water to cover cashews. Cover bowl and let stand for 15 minutes; drain and rinse cashews. Store soaked cashews in an airtight container in the refrigerator up to 5 days or freeze up to 3 months.",
            ingredients: "¼ cup raw cashews, soaked (see tip, recipe intro)\n1 tablespoon pure maple syrup\n1 tablespoon lemon juice\n1 tablespoon unsweetened, unflavored plant-based milk, such as almond, soy, cashew, or rice\n1 teaspoon pure vanilla extract\nWhole wheat flour, for dusting\n1 recipe Homemade Oil-Free Pizza Dough\n2 cups sliced fresh strawberries\n⅓ cup low-sugar strawberry preserves\nChopped fresh mint",
            directions: "Preheat oven to 400°F. Line a 12-inch pizza pan or baking sheet with parchment paper or a silicone baking mat. In a small blender combine the first five ingredients (through vanilla). Cover and blend until smooth.\nOn a lightly floured surface, roll pizza dough into a 12-inch circle, allowing dough to rest as necessary during rolling if it won’t hold its shape. Place crust on prepared pan. Bake for 10 minutes. Remove from oven.\nSpread cashew sauce over warm crust. Arrange strawberries over sauce. In a small bowl microwave strawberry preserves about 30 seconds or until thin enough to drizzle, stirring once. Drizzle over strawberries.\nBake 10 to 12 minutes more or until the crust begins to brown. Let cool on the pan on a wire rack about 20 minutes. Cut into wedges; sprinkle with mint.",
            category: "Dessert",
            datePublished: "2022-02-12",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/strawberry-dessert-pizza/"
        ),
        Recipe(
            name: "Southern-Style Banana Pudding Parfaits",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/147080/southern-parfaits-for-wordpress-360x270-c.jpg", description: "This creamy treat is made by layering an easy stove-top vanilla pudding with sliced bananas and crunchy vanilla-laced oats. To avoid clingy banana strings, peel bananas from the bottom up. (Pinch the black tip to get started.)\nNote that the cashews should be soaked overnight for creamiest results. To soak cashews, place them in a bowl with enough hot water to cover.",
            ingredients: "¼ cup cornstarch\n2 cups unsweetened, unflavored plant milk, such as almond, soy, cashew, or rice\n4 tablespoons + 2 teaspoons pure maple syrup\n⅛ teaspoon ground nutmeg\n⅛ teaspoon sea salt\n1¾ teaspoons pure vanilla extract\n¾ cup rolled oats\n¼ teaspoon ground cinnamon\n½ cup raw cashews, soaked overnight\n3 large or 4 small bananas, sliced into ¼-inch-thick rounds",
            directions: "For pudding, place cornstarch in a medium saucepan. Gradually whisk in milk until smooth. Whisk in 3 tablespoons of the maple syrup, the nutmeg, and salt. Bring just to boiling over medium, whisking constantly. Cook and whisk 2 to 3 minutes more or until mixture is thickened and no foam remains on the surface. Stir in 1 teaspoon of the vanilla. Transfer to a bowl to cool.\nWhile pudding cools, preheat oven to 350°F. Line a small baking sheet with parchment paper. In a small bowl stir together oats, 1 tablespoon of the maple syrup, ½ teaspoon of the vanilla, and the cinnamon. Spread mixture in a ½-inch-thick layer on the prepared baking sheet. Bake 15 to 18 minutes or until oats are golden brown, stirring once.\nFor cashew cream topping, drain cashews. In a blender combine cashews and the remaining 2 teaspoons maple syrup and ¼ teaspoon vanilla. Add ¼ cup water. Cover and blend until smooth and creamy. Place in an airtight container; chill.\nTo assemble parfaits, spoon 2 Tbsp. pudding in each of four parfait glasses. Top with one-third of the banana slices and one-third of the oat mixture. Repeat with another layer of pudding, one-third of the banana slices. and one-third of the oat mixture. Layer with the remaining banana slices and pudding. Cover and chill parfaits 1 to 8 hours.\nJust before serving, if desired, top with additional banana slices and the remaining oat mixture. Top each with 1 tablespoon cashew cream and additional cinnamon.",
            category: "Dessert",
            datePublished: "2022-01-01",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/southern-style-vegan-banana-pudding-parfaits/"
        ),
        Recipe(
            name: "Eat-the-Rainbow Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159991/Eat-the-Rainbow-Salad-wordpress-360x270-c.jpg", description: "Eating a colorful array of fruits and vegetables not only keeps meals interesting but also ensures you get the full spectrum of phytonutrients available from all the different color groups. This eye-catching rainbow salad features chewy wild rice, sweet red apples, tangy clementines, earthy beets, and tender salad greens to pack your bowl full of healthful ingredients. The zesty Orange-Poppyseed dressing comes together in a flash. Hearty enough to enjoy on its own, make this vibrant salad a staple of your weekday lunch routine to feel nourished and satisfied until dinnertime.",
            ingredients: "\n⅓ cup white wine vinegar\n¼ cup orange juice\n1 tablespoon poppy seeds\n1 tablespoon stone-ground mustard\n1 tablespoon pure maple syrup\n¼ teaspoon onion powder\nSea salt, to taste\nFreshly ground black pepper, to taste\n1⅓ cups dry brown and wild rice blend\n2 medium red apples\n4 clementines\n1 medium yellow summer squash\n1 8-oz. package cooked beets\n6 cups mixed salad greens\n2 cups fresh blueberries",
            directions: "For Orange-Poppyseed Dressing, in a small bowl whisk together the first six ingredients (through onion powder). Season to taste with salt and freshly ground black pepper, and set aside until serving.\nIn a medium saucepan combine rice and 4 cups water. Bring to boiling; reduce heat. Cover and simmer 30 to 40 minutes or until rice is tender. Spread rice in a shallow baking pan to cool.\nMeanwhile, core and thinly slice apples, peel and section clementines, halve yellow squash lengthwise then cut crosswise into ½-inch slices, and slice or wedge beets.\nSpread salad greens on a large platter. Top with cooled rice. Arrange apples, clementines, squash, beets, and blueberries on the rice. Drizzle with Orange–Poppy Seed Dressing.",
            category: "Salad",
            datePublished: "2021-12-23",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/eat-rainbow-salad/"
        ),
    ]
}
