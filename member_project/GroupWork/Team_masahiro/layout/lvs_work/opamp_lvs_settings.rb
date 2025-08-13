def lvs_settings
  same_circuits 'TOP', 'OPAMP'
  netlist.make_top_level_pins
  netlist.flatten_circuit 'Nch*'
  netlist.flatten_circuit 'Pch*'
  netlist.flatten_circuit 'R_poly*'
  netlist.flatten_circuit 'HR_poly'
  align
  netlist.combine_devices
  schematic.combine_devices
end
