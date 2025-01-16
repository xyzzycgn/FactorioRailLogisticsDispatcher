---
--- Created by xyzzycgn.
--- DateTime: 09.01.25 08:25
---

---@class TrainStops: any @Data of all trans stops.
---@field stops table<int, TrainStop> @
local TrainStops = {}

---@class TrainStop: any @Data of a trans stop.
-- stop data
---@field endpoint boolean @set when station is offering or demanding items or fluids
---@field depot boolean @set when station is acting as depot
---@field lastUpdateTick int @
---@field station LuaEntity @

--- may be added later
---@field active_deliveries int @
---@field entity LuaEntity @
---@field input LuaEntity @
---@field output LuaEntity @
---@field lamp_control LuaEntity @
---@field error_code int @
-- control signals
---@field is_depot boolean @
---@field network_id int @
---@field max_carriages int @
---@field min_carriages int @
---@field max_trains int @
---@field providing_threshold int @
---@field providing_threshold_stacks int @
---@field provider_priority int @
---@field requesting_threshold int @
---@field requesting_threshold_stacks int @
---@field requester_priority int @
---@field locked_slots int @
---@field no_warnings boolean @
-- parked train data
---@field parked_train LuaTrain @
---@field parked_train_id uint @
---@field parked_train_faces_stop boolean @
local TrainStop = {}

