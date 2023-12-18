local lo = require("lo")

data:extend({

    --[[
    {   --0
        type = "recipe",
        name = "",
        icon = "__liquid_overhaul__/graphics/recipes/icon_.png",
        icon_size = 128,
        category = "",
        group = "",
        subgroup = "",
        order = "",
        ingredients =
        {
            {} 
        },
        results =
        {
            {}
        }, 
        energy_required = ,
        enabled = true
    },
    #]]


    --1 Custom Recipes
    {   --1.1 Water -> Hydrogen + Oxygen / Decompose Water
        type = "recipe",
        name = "Decompose Water",
        icon = "__liquid_overhaul__/graphics/recipes/icon_water.png",
        icon_size = 128,
        category = "chemistry",
        group = "intermediate-products",
        subgroup = "fluid-recipes",
        ingredients =
        {
            {type="fluid", name="water", amount=10, temperature=15}
        },
        results =
        {
            {type="fluid", name="hydrogen", amount=20, temperature=25},
            {type="fluid", name="oxygen", amount=10, temperature=25}
        },
        energy_required = 15,
        enabled = true
    },

    {   --1.2 SiO2 + CaCO3 + Na2CO3 -> Soda-Lime Glass
        type = "recipe",
        name = "Soda-Lime Glass",
        icon = "__liquid_overhaul__/graphics/recipes/icon_glas.png",
        icon_size = 128,
        category = "high-temperature-smelting",
        group = "intermediate-products",
        subgroup = "raw-material",
        ingredients =
        {
            {type="item", name=lo.name_sio2, amount=1},
            {type="item", name=lo.name_caco3, amount=1},
            {type="item", name=lo.name_na2co3, amount=1}
        },
        results =
        {
            {type="item", name=lo.name_sl_glass, amount=2}
        },
        energy_required = 2,
        enabled = true
    },

    {   --1.3 Hydrogen -> Liquid Hydrogen
        type = "recipe",
        name = "Liquid Hydrogen",
        icon = "__liquid_overhaul__/graphics/recipes/icon_liquid_hydrogen.png",
        icon_size = 128,
        category = "chemistry",
        group = "intermediate-products",
        subgroup = "fluid-recipes",
        ingredients =
        {
            {type="fluid", name="hydrogen", amount=80, temperature=25}
        },
        results =
        {
            {type="fluid", name="liquid-hydrogen", amount=60, temperature=-252}
        },
        energy_required = 5,
        enabled = true
    },

    {   --1.4 Stone + Water -> Silica / Orthosilic Acid
        type = "recipe",
        name = "Orthosilic Acid",
        icon = "__liquid_overhaul__/graphics/recipes/icon_process.png",
        icon_size = 128,
        category = "filtering",
        group = "intermediate-products",
        subgroup = "fluid-recipes",
        ingredients =
        {
            {type="item", name="stone", amount=5},
            {type="fluid", name="water", amount=100, temperature=15}
        },
        results =
        {
            {type="fluid", name="orthosilic-acid", amount=15, temperature=25}
        },
        energy_required = 3,
        enabled = true
    },

    {   --1.5 Silica -> Silicium + Wasser + Oxygen / Advanced Orthosilic Process
        type = "recipe",
        name = "Advanced Orthosilic Process",
        icon = "__liquid_overhaul__/graphics/recipes/icon_orthosilic_process.png",
        icon_size = 128,
        category = "extracting",
        group = "intermediate-products",
        subgroup = "fluid-recipes",
        ingredients =
        {
            {type="fluid", name=lo.name_silica, amount=100}
        },
        results =
        {
            {type="fluid", name="water", amount=20, temperature=15},
            {type="item", name=lo.name_si, amount=10},
            {type="fluid", name="oxygen", amount=20, temperature=25}
        },
        energy_required = 5,
        enabled = true
    },

    {   --1.6 NaOH + HCl -> NaCl + H2O
        type = "recipe",
        name = "Sodium Chloride",
        icon = "__liquid_overhaul__/graphics/recipes/icon_nacl.png",
        icon_size = 128,
        category = "chemistry",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="fluid", name="sodium-hydroxid", amount=1, temperature=25},
            {type="fluid", name="hydrochloric-acid", amount=1, temperature=25}
        },
        results =
        {
            {type="item", name=lo.name_nacl, amount=1},
            {type="fluid", name="water", amount=1, temperature=15}
        },
        energy_required = 100,
        enabled = true
    },

    {   --1.7 Zinc Chloride
        type = "recipe",
        name = "Zinc Chloride",
        icon = "__liquid_overhaul__/graphics/recipes/icon_zncl2.png",
        icon_size = 128,
        category = "chemistry",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="fluid", name="hydrochloric-acid", amount=2, temperature=25},
            {type="item", name=lo.name_zinc, amount=1}
        },
        results =
        {
            {type="item", name=lo.name_zncl2, amount=1},
            {type="fluid", name="hydrogen", amount=1, temperature=25}
        },
        energy_required = 100,
        enabled = true
    },

    {   --1.8 Stone Crushing
        type = "recipe",
        name = "Stone Crushing",
        icon = "__liquid_overhaul__/graphics/recipes/icon_stone_crushing.png",
        icon_size = 128,
        category = "crushing",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="item", name="stone", amount=1}
        },
        results =
        {
            {type="item", name=lo.name_caco3, amount=1, probability=0.05},
            {type="item", name=lo.name_steinsalz, amount=1, probability=0.075},
            {type="item", name=lo.name_zinc, amount=1, probability=0.025},
            {type="item", name=lo.name_gravel, amount=1, probability=0.85}
        },
        energy_required = 1,
        enabled = true
    },

    {   --1.9 Solvay Process / NaCl + CaCO3 -> CaCl2 + Na2CO3
        type = "recipe",
        name = "Solvay Process",
        icon = "__liquid_overhaul__/graphics/recipes/icon_solvay.png",
        icon_size = 128,
        category = "chemical-crafting",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="item", name=lo.name_nacl, amount=2},
            {type="item", name=lo.name_caco3, amount=1}
        },
        results =
        {
            {type="item", name=lo.name_cacl2, amount=1},
            {type="item", name=lo.name_na2co3, amount=1}
        },
        energy_required = 3,
        enabled = true
    },

    {   --1.10 Si + O2 -> SiO2 / Silicon Dioxide
        type = "recipe",
        name = "Silicon Dioxide",
        icon = "__liquid_overhaul__/graphics/recipes/icon_silicon_dioxide.png",
        icon_size = 128,
        category = "chemistry",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="item", name=lo.name_si, amount=1},
            {type="fluid", name="oxygen", amount=1, temperature=25}
        },
        results =
        {
            {type="item", name=lo.name_sio2, amount=1}
        },
        energy_required = 1.5,
        enabled = true
    },

    {   --1.11 Kies -> Sand
        type = "recipe",
        name = "Gravel Crushing",
        icon = "__liquid_overhaul__/graphics/recipes/icon_gravel_crushing.png",
        icon_size = 128,
        category = "crushing",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="item", name=lo.name_gravel, amount=1}
        },
        results =
        {
            {type="item", name=lo.name_sand, amount=3}
        },
        energy_required = 0.8,
        enabled = true
    },

    {   --1.12 Halitite Filtering
        type = "recipe",
        name = "Halitite Filtering",
        icon = "__liquid_overhaul__/graphics/recipes/icon_halitite_filtering.png",
        icon_size = 128,
        category = "filtering",
        group = "intermediate-products",
        subgroup = "raw-resource",
        ingredients =
        {
            {type="item", name=lo.name_steinsalz, amount=1}
        },
        results =
        {
            {type="item", name=lo.name_nacl, amount=1, probability=0.85}
        },
        energy_required = 1.2,
        enabled = true
    },

  
  




















    --2.1 Oil Distillation
    {
        type = "recipe",
        name = "Oil Distillation",
        icon = "__liquid_overhaul__/graphics/recipes/icon_oil_distillation.png",
        icon_size = 128,
        category = "oil-processing",
        subgroup = "fluid-recipes",
        order = "a[oil_processing]-a[distillation]",
        ingredients =
        {
            {type = "fluid", name = "crude-oil", amount = 100, temperature=25},
            {type = "fluid", name = "water", amount = 50, temperature=15},
            {type = "item", name = lo.name_catalyst, amount = 1}
        },
        results =
        {
            {type = "fluid", name = "natural-gas", amount = 25, temperature=25},
            {type = "fluid", name = "light-naphtha", amount = 30, temperature=25},
            {type = "fluid", name = "kerosene", amount = 20, temperature=25},
            {type = "fluid", name = "diesel", amount = 15, temperature=25},
            {type = "fluid", name = "heavy-naphtha", amount = 5, temperature=25},
            {type = "fluid", name = "residual-crude-oil", amount = 3, temperature=25},
            {type = "item", name = lo.name_residual_coke, amount = 1},
            {type = "item", name = lo.name_residual_asphalt, amount = 1},
        },
        energy_required = 10,
        enabled = false
    },

    --2.2 Vacuumdestillation
    {
        type = "recipe",
        name = "Vacuum Oil Distillation",
        icon = "__liquid_overhaul__/graphics/recipes/icon_vacuum_distillation.png",
        icon_size = 128,
        category = "oil-processing",
        subgroup = "fluid-recipes",
        order = "a[oil_processing]-b[vacuum-distillation]",
        ingredients =
        {
            {type = "fluid", name = "residual-crude-oil", amount = 100, temperature=25}
        },
        results =
        {
            {type = "fluid", name = "light-vacuum-gas-oil", amount = 40, temperature=25},
            {type = "fluid", name = "heavy-vacuum-gas-oil", amount = 30, temperature=25},
            {type = "fluid", name = "residual-vacuum-oil", amount = 20, temperature=25},
            {type = "item", name = lo.name_residual_asphalt, amount = 5},
            {type = "fluid", name = "fuel-oil", amount = 10, temperature=25},
        },
        energy_required = 6,
        enabled = false
    },













  






































    --3 All Machines / Entitys
    {   --3.1 Crushing Machine
        type = "recipe",
        name = "Crushing machine",
        icon = "__liquid_overhaul__/graphics/recipes/icon_crushingmachine.png",
        icon_size = 128,
        category = "advanced-crafting",
        group = "production",
        subgroup = "production-machine",
        ingredients =
        {
            {type="item", name="assembling-machine-3", amount=1},
            {type="item", name="iron-gear-wheel", amount=5}
        },
        results =
        {
            {type="item", name=lo.name_crushingmachine, amount=1}
        },
        energy_required = 2,
        enabled = true
    },

    {   --3.2 Filter Machine
        type = "recipe",
        name = "Filter machine",
        icon = "__liquid_overhaul__/graphics/recipes/icon_filtermachine.png",
        icon_size = 128,
        category = "advanced-crafting",
        group = "production",
        subgroup = "production-machine",
        ingredients =
        {
            {type="item", name="assembling-machine-3", amount=1},
            {type="item", name="iron-stick", amount=2}
        },
        results =
        {
            {type="item", name=lo.name_filtermachine, amount=1}
        },
        energy_required = 2,
        enabled = true
    },

    {   --3.3 Oil Refinery 2
        type = "recipe",
        name = "Oil Refinery 2",
        icon = "__liquid_overhaul__/graphics/recipes/icon_refinery2.png",
        icon_size = 128,
        category = "advanced-crafting",
        group = "production",
        subgroup = "production-machine",
        ingredients =
        {
            {type="item", name="oil-refinery", amount=1},
            {type="item", name="iron-gear-wheel", amount=2}
        },
        results =
        {
            {type="item", name=lo.name_refinery2, amount=1}
        },
        energy_required = 2,
        enabled = false
    },
































    --Hidden Default Recipes
    {   --4.1 Sulfur
        type = "recipe",
        name = "sulfur",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.2 Basic Oil Processing
        type = "recipe",
        name = "basic-oil-processing",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.3 Advanced Oil Processing
        type = "recipe",
        name = "advanced-oil-processing",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.4 Sulfuric Acid
        type = "recipe",
        name = "sulfuric-acid",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.5 Coal liquefaction
        type = "recipe",
        name = "coal-liquefaction",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.6 Lubricant
        type = "recipe",
        name = "lubricant",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.7 Light Oil Cracking to Petroleum Gas
        type = "recipe",
        name = "light-oil-cracking",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.8 Heavy Oil Cracking to Light Oil
        type = "recipe",
        name = "heavy-oil-cracking",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    },
    {   --4.9 Plastic
        type = "recipe",
        name = "plastic-bar",
        icon = "__liquid_overhaul__/graphics/recipes/hidden.png",
        icon_size = 1,
        subgroup = "inserter",
        ingredients = {nil},
        results = {nil},
        enabled = false,
        hidden = true
    }
})
