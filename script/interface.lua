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

