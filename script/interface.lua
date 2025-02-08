---
--- Created by xyzzycgn.
--- DateTime: 08.01.25 21:35
---
--- defines an interface for other mods to access certain data

-- must be global
on_trainstops_updated_event = script.generate_event_name()
log("registered on_trainstops_updated_event: " .. on_trainstops_updated_event)
on_deliveries_updated_event = script.generate_event_name()
log("registered on_deliveries_updated_event: " .. on_deliveries_updated_event)

-- allows other mods to register for update events
remote.add_interface("RailLogisticsDispatcher", {
  -- updates for trainstops
  on_trainstops_updated = function() return on_trainstops_updated_event end,
  -- updates for deliveries
  on_deliveries_updated = function() return on_deliveries_updated_event end,
})

--- raised by on_deliveries_updated
---@class DeliveriesEvent: any @Data of all trans stops.
---@field deliveries table<DeliveryUid, DeliveryData> @
---@field tick int @
local DeliveriesEvent = {}

--- @class DeliveryData: any@ details of active deliveries
---@field DeliveryUid @
---@field provider number@ uid of provider station
---@field requester number@ uid of requester station
---@field providerPassedTick int|nil@ set when train arrives at provider station
---@field requesterPassedTick int |nil@ set when train arrives at requester station
---@field contents@ cargo delivered
---@field startTick int@
---@field at number|nil@ uid of station if train is present
local DeliveryData = {}

--- raised by on_trainstops_updated
---@class TrainStopsEvent: any @Data of all train stops.
---@field trainstops table<int, TrainStop> @
---@field tick int @
local TrainStopsEvent = {}

---@class TrainStop: any @Data of a trans stop.
---@field endpoint boolean @set when station is offering or demanding items or fluids
---@field depot boolean @set when station is acting as depot
---@field lastUpdateTick int @
---@field dispatcher_unit_number uint @ unit_number of dispatcher
---@field color string @ color shown by dispatcher
---@field network string|nil @ network ID of dispatcher - nil if in depot mode
---@field minTrainLength uint@
---@field maxTrainLength uint@
---@field station string@ name of the station
---@field stoppedTrain number|nil@ ID of stopped train or NIL if no train is waiting in the station
---@field lastUpdateTick number@
---@field signals table<TypeNameQuality, DispSignal>@ TODO
---@field transit @  TODO
---@field errors table<TypeNameQuality|string,  DispError>>@ TODO
---@field paused boolean@
---@field stat table<TypeNameQuality, DispStatPerTnq>|nil Statistics per cargo
---@field visits number|nil  Count of all trains (only registered)
local TrainStop = {}



