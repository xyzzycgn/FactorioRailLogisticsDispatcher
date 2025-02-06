---
--- Created by xyzzycgn.
--- DateTime: 09.01.25 08:25
---

---@class DeliveriesEvent: any @Data of all trans stops.
---@field deliveries table<DeliveryUid, DeliveryData> @
---@field tick int @
local DeliveriesEvent = {}

--- @class DeliveryData
---@field DeliveryUid @
---@field provider number@ uid of provider station
---@field requester number@ uid of requester station
---@field providerPassedTick int|nil@ set when train arrives at provider station
---@field requesterPassedTick int |nil@ set when train arrives at requester station
---@field contents@
---@field startTick int@
---@field at number|nil@ uid of station if train is present
local DeliveryData = {}

---@class TrainStopsEvent: any @Data of all trans stops.
---@field trainstops table<int, TrainStop> @
---@field tick int @
local TrainStopsEvent = {}

---@class TrainStop: any @Data of a trans stop.
-- stop data
---@field endpoint boolean @set when station is offering or demanding items or fluids
---@field depot boolean @set when station is acting as depot
---@field lastUpdateTick int @
---@field dispatcher_unit_number uint @ unit_number of dispatcher
---@field color string @ color shown by dispatcher
---@field network string|nil @ network ID of dispatcher - nil if in depot mode
---@field minTrainLength uint@
---@field maxTrainLength uint@
---@field station string@ name of the station
---@field stoppedTrain number|nil@ ID of stopped train or NIL if no trains is waiting in the station
---@field lastUpdateTick number@
---@field signals table<TypeNameQuality, DispSignal>@ TODO
---@field transit @  TODO
---@field errors table<TypeNameQuality|string,  DispError>>@ TODO
---@field paused boolean@
 ---@field stat table<TypeNameQuality, DispStatPerTnq>|nil Statistics per cargo
 ---@field visits number|nil  Count of all trains (only registered)


--- may be added later
---@field active_deliveries int @
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

