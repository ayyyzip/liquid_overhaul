local lo = require("lo")

data:extend({
    {   --1.1 hydrogen / Hydrogen
        type = "fluid",
        name = "hydrogen",
        icon = "__liquid_overhaul__/graphics/fluids/icon_hydrogen.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.9, g=0.9, b=0.9},
        flow_color = {r=0.9, g=0.9, b=0.9}, 
        max_temperature = 25,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false
    },
    {   --1.2 liquid_hydrogen / Liquid Hydrogen
        type = "fluid",
        name = "liquid-hydrogen",
        icon = "__liquid_overhaul__/graphics/fluids/icon_liquid_hydrogen.png",
        icon_size = 64,
        default_temperature = -253,
        heat_capacity = "1KJ",
        base_color = {r=0.9, g=0.9, b=0.9},
        flow_color = {r=0.9, g=0.9, b=0.9},
        max_temperature = -240,
        pressure_to_speed_ratio = 0.4,
         flow_to_energy_ratio = 0.59
    },
    {   --1.3 Orthosilic Acid
        type = "fluid",
        name = "orthosilic-acid",
        icon = "__liquid_overhaul__/graphics/fluids/icon_silica.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.3, g=0.3, b=0.3},
        flow_color = {r=0.3, g=0.3, b=0.3},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
    },
    {   --1.4 oxygen / Oxygen
        type = "fluid",
        name = "oxygen",
        icon = "__liquid_overhaul__/graphics/fluids/icon_oxygen.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.9, g=0.9, b=0.9},
        flow_color = {r=0.9, g=0.9, b=0.9},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false
    },
    {   --1.5 naoh / Hydrochloric Acid
        type = "fluid",
        name = "sodium-hydroxid",
        icon = "__liquid_overhaul__/graphics/fluids/icon_naoh.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.7, g=0.7, b=0.7},
        flow_color = {r=0.7, g=0.7, b=0.7},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
    },
    {   --1.6 hcl / Sodium Hydroxid
        type = "fluid",
        name = "hydrochloric-acid",
        icon = "__liquid_overhaul__/graphics/fluids/icon_hcl.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r=0.8, g=0.85, b=0.8},
        flow_color = {r=0.8, g=0.85, b=0.8},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
    },
    --[[
    --1.1 name
    {
        type = "fluid",
        name = "name",
        icon = "__liquid_overhaul__/graphics/fluids/icon_ name.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "",
        base_color = {r=, g=, b=},
        flow_color = {r=, g=, b=},
        max_temperature = ,
        pressure_to_speed_ratio = ,
        flow_to_energy_ratio = 
    },
    ]]

    --1.10 Light Naphtha
    {
        type = "fluid",
        name = "light-naphtha",
        icon = "__liquid_overhaul__/graphics/fluids/icon_light_naphtha.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.5KJ",
        base_color = {r=0.8, g=0.8, b=0.2},
        flow_color = {r=0.8, g=0.8, b=0.2},
        max_temperature = 145,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.6
    },
    
    --1.11 Kerosene
    {
        type = "fluid",
        name = "kerosene",
        icon = "__liquid_overhaul__/graphics/fluids/icon_kerosene.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.6KJ",
        base_color = {r=0.2, g=0.5, b=0.8},
        flow_color = {r=0.2, g=0.5, b=0.8},
        max_temperature = 150,
        pressure_to_speed_ratio = 0.5,
        flow_to_energy_ratio = 0.7
    },
    
    --1.12 Natural Gas
    {
        type = "fluid",
        name = "natural-gas",
        icon = "__liquid_overhaul__/graphics/fluids/icon_natural_gas.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.4KJ",
        base_color = {r=0.5, g=0.8, b=0.2},
        flow_color = {r=0.5, g=0.8, b=0.2},
        max_temperature = 80,
        pressure_to_speed_ratio = 0.3,
        flow_to_energy_ratio = 0.5,
        auto_barrel = false
    },
    
    --1.13 Diesel
    {
        type = "fluid",
        name = "diesel",
        icon = "__liquid_overhaul__/graphics/fluids/icon_diesel.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.7KJ",
        base_color = {r=0.1, g=0.1, b=0.1},
        flow_color = {r=0.1, g=0.1, b=0.1},
        max_temperature = 120,
        pressure_to_speed_ratio = 0.6,
        flow_to_energy_ratio = 0.8
    },
    
    --1.14 Heavy Naphtha
    {
        type = "fluid",
        name = "heavy-naphtha",
        icon = "__liquid_overhaul__/graphics/fluids/icon_heavy_naphtha.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.8KJ",
        base_color = {r=0.6, g=0.3, b=0.1},
        flow_color = {r=0.6, g=0.3, b=0.1},
        max_temperature = 205,
        pressure_to_speed_ratio = 0.7,
        flow_to_energy_ratio = 0.9
    },
    
    --1.15 Residual Crude Oil
    {
        type = "fluid",
        name = "residual-crude-oil",
        icon = "__liquid_overhaul__/graphics/fluids/icon_residual_crude_oil.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.9KJ",
        base_color = {r=0.3, g=0.3, b=0.3},
        flow_color = {r=0.3, g=0.3, b=0.3},
        max_temperature = 110,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.7
    },

    --1.16 Light Vacuum Gas Oil
    {   
        type = "fluid",
        name = "light-vacuum-gas-oil",
        icon = "__liquid_overhaul__/graphics/fluids/icon_light_vacuum_gas_oil.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.7KJ",
        base_color = {r=1, g=1, b=1},
        flow_color = {r=1, g=1, b=1},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.8,
        flow_to_energy_ratio = 1.0
    },

    --1.17 Heavy Vacuum Gas Oil
    {    
        type = "fluid",
        name = "heavy-vacuum-gas-oil",
        icon = "__liquid_overhaul__/graphics/fluids/icon_heavy_vacuum_gas_oil.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.6KJ",
        base_color = {r=1, g=1, b=1},
        flow_color = {r=1, g=1, b=1},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.7,
        flow_to_energy_ratio = 0.9
    },

    --1.18 Residual Vacuum Oil
    {    
        type = "fluid",
        name = "residual-vacuum-oil",
        icon = "__liquid_overhaul__/graphics/fluids/icon_residual_vacuum_oil.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.45KJ",
        base_color = {r=1, g=1, b=1},
        flow_color = {r=1, g=1, b=1},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.5,
        flow_to_energy_ratio = 0.6
    },

    --1.19 Fuel Oil
    {   
        type = "fluid",
        name = "fuel-oil",
        icon = "__liquid_overhaul__/graphics/fluids/icon_fuel_oil.png",
        icon_size = 64,
        default_temperature = 25,
        heat_capacity = "0.8KJ",
        base_color = {r=1, g=1, b=1},
        flow_color = {r=1, g=1, b=1},
        max_temperature = 25,
        pressure_to_speed_ratio = 0.7,
        flow_to_energy_ratio = 0.9
    },
    

    
    
    













    
  























    --2 Hidden fluids
    
    {   --2.1 Heavy Oil
        type = "fluid",
        name = "heavy-oil",
        icon = "__liquid_overhaul__/graphics/fluids/hidden.png",
        icon_size = 1,
        default_temperature = 20,
        base_color = {r=0, g=0, b=0},
        flow_color = {r=0, g=0, b=0},
        auto_barrel = false,
        hidden = true,
        enabled = false
    },

    {   --2.2 Light Oil
        type = "fluid",
        name = "light-oil",
        icon = "__liquid_overhaul__/graphics/fluids/hidden.png",
        icon_size = 1,
        default_temperature = 20,
        base_color = {r=0, g=0, b=0},
        flow_color = {r=0, g=0, b=0},
        auto_barrel = false,
        hidden = true,
        enabled = false
    },
    
    {   --2.3 Lubricant
        type = "fluid",
        name = "lubricant",
        icon = "__liquid_overhaul__/graphics/fluids/hidden.png",
        icon_size = 1,
        default_temperature = 20,
        base_color = {r=0, g=0, b=0},
        flow_color = {r=0, g=0, b=0},
        auto_barrel = false,
        hidden = true,
        enabled = false
    },

    {   --2.4 Petroleum Gas
        type = "fluid",
        name = "petroleum-gas",
        icon = "__liquid_overhaul__/graphics/fluids/hidden.png",
        icon_size = 1,
        default_temperature = 20,
        base_color = {r=0, g=0, b=0},
        flow_color = {r=0, g=0, b=0},
        auto_barrel = false,
        hidden = true,
        enabled = false
    },

    {   --2.5 Sulfuric Acid
        type = "fluid",
        name = "sulfuric-acid",
        icon = "__liquid_overhaul__/graphics/fluids/hidden.png",
        icon_size = 1,
        default_temperature = 20,
        base_color = {r=0, g=0, b=0},
        flow_color = {r=0, g=0, b=0},
        auto_barrel = false,
        hidden = true,
        enabled = false
    }
})