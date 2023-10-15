local status_hop, hop = pcall(require, 'hop')
if (not status_hop) then
  print("Hop not added")
else
  hop.setup()
end
