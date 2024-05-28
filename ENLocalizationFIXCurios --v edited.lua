local mod = get_mod("ENLocalizationFIXCurios")
local WTL = get_mod("WhatTheLocalization")
local InputUtils = require("scripts/managers/input/input_utils")

--[[ Thanks to Ovenproof! Moving the Use button.
	--self._widgets_by_name.equip_button.offset[1] = -622 ]]
-- mod:hook_safe(CLASS.InventoryWeaponsView, "on_enter", function (self)
	-- self._widgets_by_name.equip_button.offset = {-622,20,0}
-- end)

--[[ Thanks to Fracticality!
local InputUtils = require("scripts/managers/input/input_utils")
local color_name = mod:get("damage_text_colour")
local color = Color[color_name](255, true)
local damage_text = InputUtils.apply_color_to_input_text("Damage", color) ]]

-- ==============================================================COMBAT ABILITY
local combat_ability_color = Color[mod:get("combat_ability_text_colour")](255, true)
local combat_ability_color_rgb = InputUtils.apply_color_to_input_text("Combat Ability", combat_ability_color)

-- ==============================================================CORRUPTION
local corruption_color = Color[mod:get("corruption_text_colour")](255, true)
local corruption_color_rgb = InputUtils.apply_color_to_input_text("Corruption", corruption_color)

-- ==============================================================DAMAGE
local damage_color = Color[mod:get("damage_text_colour")](255, true)
local damage_color_rgb = InputUtils.apply_color_to_input_text("Damage", damage_color)

-- ==============================================================HEALTH
local health_color = Color[mod:get("health_text_colour")](255, true)
local health_color_rgb = InputUtils.apply_color_to_input_text("Health", health_color)

-- ==============================================================WOUNDS
local wound_color = Color[mod:get("health_text_colour")](180, true)
local wound_color_rgb = InputUtils.apply_color_to_input_text("Wound(s)", wound_color)

-- ==============================================================STAMINA
local stamina_color = Color[mod:get("stamina_text_colour")](255, true)
local stamina_color_rgb = InputUtils.apply_color_to_input_text("Stamina", stamina_color)

-- ==============================================================TOUGHNESS
local toughness_color = Color[mod:get("toughness_text_colour")](255, true)
local toughness_color_rgb = InputUtils.apply_color_to_input_text("Toughness", toughness_color)

-- ==============================================================VARIABLES - ПЕРЕМЕННЫЕ
local variables_color = Color[mod:get("variables_text_colour")](255, true)
local p_max_health_color_rgb = InputUtils.apply_color_to_input_text("+{max_health_modifier:%s}", variables_color)
local p_max_wounds_color_rgb = InputUtils.apply_color_to_input_text("+{extra_max_amount_of_wounds:%s}", variables_color)
local p_max_stamina_color_rgb = InputUtils.apply_color_to_input_text("+{stamina_modifier:%s}", variables_color)
local p_max_toughness_color_rgb = InputUtils.apply_color_to_input_text("+{toughness_bonus:%s}", variables_color)

local p_abil_cd_color_rgb = InputUtils.apply_color_to_input_text("+{ability_cooldown_modifier:%s}", variables_color)
local p_corr_color_rgb = InputUtils.apply_color_to_input_text("+{corruption_taken_multiplier:%s}", variables_color)
local p_corr_grim_color_rgb = InputUtils.apply_color_to_input_text("+{permanent_damage_converter_resistance:%s}", variables_color)
local p_block_cost_color_rgb = InputUtils.apply_color_to_input_text("+{block_cost_multiplier:%s}", variables_color)
local p_revive_color_rgb = InputUtils.apply_color_to_input_text("+{revive_speed_modifier:%s}", variables_color)
local p_stam_regen_rgb = InputUtils.apply_color_to_input_text("+{stamina_regeneration_modifier:%s}", variables_color)
local p_xp_rgb = InputUtils.apply_color_to_input_text("+{mission_reward_xp_modifier:%s}", variables_color)
local p_credits_rgb = InputUtils.apply_color_to_input_text("+{mission_reward_credit_modifier:%s}", variables_color)
local p_gears_rgb = InputUtils.apply_color_to_input_text("+{mission_reward_gear_instead_of_weapon_modifier:%s}", variables_color)
local p_dmg_reduction_rgb = InputUtils.apply_color_to_input_text("+{damage_reduction:%s}", variables_color)

local m_bcm_color_rgb = InputUtils.apply_color_to_input_text("-{sprinting_cost_multiplier:%s}", variables_color)
local m_toughness_reg_delay_color_rgb = InputUtils.apply_color_to_input_text("-{toughness_regen_delay_multiplier:%s}", variables_color)


mod.localization_templates = {
-- Fixes and overhauls by xsSplater
-- {	id = "some_id_here",
	-- loc_keys = {"loc_code_of_element",}, -- Enable Debug mode in WhatTheLocalization mod settings
	-- locales = {"en",}, -- de|en|es|fr|it|pl|ru|...
	-- handle_func = function(locale, value)
	-- return "Your variant of game String." end},

-- ==============================================================CURIOS

-- ____________________________________________________Благословения - Blessings
{	id = "curio_bless0_ext_en",
	loc_keys = {"loc_inate_gadget_health_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_health_color_rgb .. " Махimum " .. health_color_rgb end},
{	id = "curio_bless1_ext_en",
	loc_keys = {"loc_inate_gadget_health_segment_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_wounds_color_rgb .. " " .. wound_color_rgb end},
{	id = "curio_bless2_ext_en",
	loc_keys = {"loc_inate_gadget_stamina_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_stamina_color_rgb .. " Махimum " .. stamina_color_rgb end},
{	id = "curio_bless3_ext_en",
	loc_keys = {"loc_inate_gadget_toughness_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_toughness_color_rgb .. " " .. toughness_color_rgb end},

-- ____________________________________________________Traits
{	id = "curio_traits0_ext_en",
	loc_keys = {"loc_gadget_cooldown_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_abil_cd_color_rgb .. " " .. combat_ability_color_rgb .. " Regeneration" end},
{	id = "curio_traits1_ext_en",
	loc_keys = {"loc_gadget_corruption_resistance_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_corr_color_rgb .. " " .. corruption_color_rgb .. " Resistance" end},
{	id = "curio_traits2_ext_en",
	loc_keys = {"loc_gadget_grim_corruption_resistance_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_corr_grim_color_rgb .. " " .. corruption_color_rgb .. " Resistance from Grimoires" end},
{	id = "curio_traits3_ext_en",
	loc_keys = {"loc_trait_gadget_health_increase_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_health_color_rgb .. " Махimum " .. health_color_rgb end},
	{	id = "curio_traits4_ext_en",
	loc_keys = {"loc_gadget_block_cost_reduction_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_block_cost_color_rgb .. " Block Cost Reduction" end},
	{	id = "curio_traits5_ext_en",
	loc_keys = {"loc_gadget_sprint_cost_reduction_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return m_bcm_color_rgb .. " " .. stamina_color_rgb .. " Cost for Sprinting" end},
{	id = "curio_traits6_ext_en",
	loc_keys = {"loc_gadget_revive_speed_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_revive_color_rgb .. " Ally Revive Speed" end},
{	id = "curio_traits7_ext_en",
	loc_keys = {"loc_gadget_stamina_regeneration_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_stam_regen_rgb .. " " .. stamina_color_rgb .. " Regeneration" end},
{	id = "curio_traits8_ext_en",
	loc_keys = {"loc_trait_gadget_toughness_increase_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_max_toughness_color_rgb .. " " .. toughness_color_rgb end},
{	id = "curio_traits9_ext_en",
	loc_keys = {"loc_gadget_toughness_regen_delay_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return m_toughness_reg_delay_color_rgb .. " " .. toughness_color_rgb .. " Regeneration Delay" end},
{	id = "curio_traits10_ext_en",
	loc_keys = {"loc_trait_gadget_mission_xp_increase_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_xp_rgb .. " Experience" end},
{	id = "curio_traits11_ext_en",
	loc_keys = {"loc_trait_gadget_mission_credits_increase_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_credits_rgb .. " Ordo Dockets" end},
{	id = "curio_traits12_ext_en",
	loc_keys = {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_gears_rgb .. " chance of Curio as Mission Reward instead of Weapon" end},
{	id = "curio_traits13_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_flamer_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Flamers" end},
{	id = "curio_traits14_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_grenadiers_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Bombers" end},
{	id = "curio_traits15_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_gunners_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Gunners" end},
{	id = "curio_traits16_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_hounds_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Pox Hounds" end},
{	id = "curio_traits17_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_mutants_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Mutants" end},
{	id = "curio_traits18_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_snipers_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Snipers" end},
{	id = "curio_traits19_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_bursters_desc",},
	locales = {"en",},
	handle_func = function(locale, value)
	return p_dmg_reduction_rgb .. " " .. damage_color_rgb .. " Resistance vs Poxbursters" end},

-- FOR TESTS ONLY!!!
-- {id = "weap_testum00",
-- loc_keys = {
-- "",},
-- locales = {"en",},
-- handle_func = function(locale, value)
-- return string.gsub(value, "{", "(")
-- end,},
}

function mod.on_enabled()
	if WTL then
		WTL.reload_templates()
	end
end

function mod.on_disabled()
	if WTL then
		WTL.reload_templates()
	end
end
