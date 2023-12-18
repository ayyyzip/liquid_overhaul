data:extend(
{
    {
        type = "technology",
        name = "oil-distillation",
        icon = "__liquid_overhaul__/graphics/technologies/icon_oil_distillation.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "Oil Distillation"
            },
            {
                type = "unlock-recipe",
                recipe = "Vacuum Oil Distillation" 
            },
            {
                type = "unlock-recipe",
                recipe = "Oil Refinery 2" 
            }
        },
        prerequisites = {"fluid-handling", "oil-processing", "chemical-science-pack"},
        unit = {count=10, ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}, time=1}
    }
})