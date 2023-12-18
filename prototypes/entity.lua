local lo = require("lo")

data:extend({

    --1 Crushing Machine
    {
        type = "assembling-machine",
        name = lo.name_crushingmachine,
        flags = { "placeable-neutral", "player-creation" },
        icon = "__liquid_overhaul__/graphics/entitys/icon_crushingmachine.png",
        icon_size = 128,
        max_health = 100,
        minable =
        {
            mining_time = 1,
            result = lo.name_crushingmachine
        },
        corpse = "small-remnants",
        collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
        selection_box = {{-1.50, -1.50}, {1.50, 1.50}},
        energy_usage = "2W",
        energy_source =
        {
            type = "electric",
            emissions_per_minute = 0,
            effectivity = 1,
            render_no_power_icon = false,
            usage_priority = "primary-input"
        },
        crafting_categories = {"crushing"},
        crafting_speed = 1,
        vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        animation =
        {
            layers =
            {
                {
                    filename = "__liquid_overhaul__/graphics/entitys/icon_crushingmachine.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 1,
                    shift = {0.00, 0.00}
                }
            }
        }
    },
    --2 Filter Machine
    {   
        type = "assembling-machine",
        name = lo.name_filtermachine,
        flags = { "placeable-neutral", "player-creation" },
        icon = "__liquid_overhaul__/graphics/entitys/icon_filtermachine.png",
        icon_size = 128,
        max_health = 100,
        minable =
        {
            mining_time = 1,
            result = lo.name_filtermachine
        },
        corpse = "small-remnants",
        collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
        selection_box = {{-1.50, -1.50}, {1.50, 1.50}},
        energy_usage = "2W",
        energy_source =
        {
            type = "electric",
            emissions_per_minute = 0,
            effectivity = 1,
            render_no_power_icon = false,
            usage_priority = "primary-input"
        },
        crafting_categories = {"filtering"},
        crafting_speed = 1,
        vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        animation =
        {
            layers =
            {
                {
                    filename = "__liquid_overhaul__/graphics/entitys/icon_filtermachine.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 1,
                    shift = {0.00, 0.00}
                }
            }
        }
    },
    -- Oil Refinery 2
    {
        type = "assembling-machine",
        name = lo.name_refinery2,
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = lo.name_refinery2},
        max_health = 350,
        corpse = "oil-refinery-remnants",
        dying_explosion = "oil-refinery-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
        module_specification =
        {
          module_slots = 3
        },
        scale_entity_info_icon = true,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"oil-processing"},
        crafting_speed = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = 6
        },
        energy_usage = "420kW",
    
        animation = make_4way_animation_from_spritesheet(
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
              width = 337,
              height = 255,
              frame_count = 1,
              shift = {2.515625, 0.484375},
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
                width = 386,
                height = 430,
                frame_count = 1,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
              width = 337,
              height = 213,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                width = 674,
                height = 426,
                frame_count = 1,
                shift = util.by_pixel(82.5, 26.5),
                draw_as_shadow = true,
                force_hr_shadow = true,
                scale = 0.5
              }
            }
          }
        }),
    
        working_visualisations =
        {
          {
            draw_as_light = true,
            fadeout = true,
            constant_speed = true,
            north_position = util.by_pixel(34, -65),
            east_position = util.by_pixel(-52, -61),
            south_position = util.by_pixel(-59, -82),
            west_position = util.by_pixel(57, -58),
            animation =
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
              line_length = 10,
              width = 20,
              height = 40,
              frame_count = 60,
              animation_speed = 0.75,
              shift = util.by_pixel(0, -14),
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
                line_length = 10,
                width = 40,
                height = 81,
                frame_count = 60,
                animation_speed = 0.75,
                scale = 0.5,
                shift = util.by_pixel(0, -14.25)
              }
            },
          },
          {
            fadeout = true,
            draw_as_light = true,
            north_animation =
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            east_animation =
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            south_animation =
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163 * 2;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321 * 2;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
            west_animation =
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
              width = 163,
              x = 163 * 3;
              height = 104,
              blend_mode = "additive",
              shift = util.by_pixel(-2, -50),
              hr_version =
              {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
                width = 321,
                x = 321 * 3;
                height = 205,
                blend_mode = "additive",
                shift = util.by_pixel(-1, -50),
                scale = 0.5,
              }
            },
          }
        },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/oil-refinery.ogg"
          },
          --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        fluid_boxes =
        {
          --1 input
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections =
            {
              {
                type="input",
                position = {-1, 3}
              }
            }
          },
          --2 input
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections =
            {
              {
                type="input",
                position = {1, 3}
              }
            }
          },
          --1 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {-3, 1}
              }
            }
          },
          --2 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {-1, -3}
              }
            }
          },
          --3 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {1, -3}
              }
            }
          },
          --4 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {3, -1}
              }
            }
          },
          --5 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {3, 1}
              }
            }
          },
          --6 output
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_level = 1,
            pipe_connections =
            {
              {
                type = "output",
                position = {-3, -1}
              }
            }
          }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
            priority = "extra-high",
            width = 40,
            height = 48,
            shift = util.by_pixel(5, 95),
            variation_count = 4,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = true
        }
      }
})