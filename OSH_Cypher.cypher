// Created by 2020 Alex Donkers

// Please refer to Donkers, A.J.A. (2020). 'OpenSmartHomeData as a Labeled Property Graph'
// Please also refer to the original OSH dataset, created by Georg Ferdinand Schneider and copyrighted by Fraunhofer Institute of Building Physics

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// Create nodes
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (site:Site {
			type: ["NamedIndividual", "Site"], 
			label: "Site of the building"
			}
		) 

//////////////////////////////////////////////////////////////////////////////
// Storey

CREATE (level1:Storey {
			type: ["NamedIndividual", "Storey"],
			label: "Ground floor of the building",
			ifc_label: "IfcBuildingStorey_132",
			name: "Level 1",
			revit_guid: "e3e052f9-0156-11d5-9301-0000863f27ad-00000137"
			}
		)

CREATE (level2:Storey {
			type: ["NamedIndividual", "Storey"],
			label: "First floor of the building",
			ifc_label: "IfcBuildingStorey_138",
			name: "Level 2",
			revit_guid: "458c0e49-01bb-11d5-9302-0000863f27ad-000002b6"
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Building

CREATE (building:Building {
			type: ["NamedIndividual", "Building"],
			label: "Real building with smart home system.",
			latitude: "49.460899",
			longitude: "11.069208",
			altitude: "300"
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Spaces without sensors

CREATE (lobby:Space {
			type: ["NamedIndividual", "Space", "Lobby"],
			label: "Lobby in flat with no sensors",
			ifc_label: "IfcSpace_458",
			name: "Diele 9",
			room_number: "9",
			area: "9.48",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e1c7",
			space_boundary: "POLYGON((-2620.86349757 1396.40843218, -4880.86349757 1396.40843218, -4880.86349757 -543.591567823, -3100.86349757 -543.591567823, -920.863497573 -543.591567823, -920.863497573 773.398832177, -920.863497573 926.408432177, -920.863497573 2456.40843218, -940.863497573 2456.40843218, -2620.86349757 2456.40843218, -2620.86349757 1396.40843218))"
			}
		)

CREATE (room_before_toilet:Space {
			type: ["NamedIndividual", "Space", "Room"],
			ifc_label: "IfcSpace_343",
			name: "Room 6",
			room_number: "6",
			area: "2.96",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e061",
			space_boundary: "POLYGON((-3180.86349757 -703.591567823, -4880.86349757 -703.591567823, -4880.86349757 -2443.59156782, -3180.86349757 -2443.59156782, -3180.86349757 -703.591567823))"
			}
		)

CREATE (staircase:Space {
			type: ["NamedIndividual", "Space"], 
			ifc_label: "IfcSpace_279",
			name: "Treppenhaus 4",
			room_number: "4",
			area: "13.05",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e058",
			space_boundary: "POLYGON((-7550.86349757 1396.40843218, -7550.86349757 -3803.59156782, -5040.86349757 -3803.59156782, -5040.86349757 -2523.59156782, -5040.86349757 -623.591567823, -5040.86349757 1396.40843218, -7550.86349757 1396.40843218))"
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Kitchen

CREATE (kitchen:Space {
			type: ["NamedIndividual", "Space", "Kitchen", "FeatureOfInterest"], 
			ifc_label: "IfcSpace_311",
			name: "Küche 5",
			room_number: "5",
			area: "9.3",
			volume: "0",
			revit_guid: "5b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e05e",
			space_boundary: "POLYGON((-3020.86349757 -3803.59156782, -20.8634975731 -3803.59156782, -20.8634975731 -703.591567823, -920.863497573 -703.591567823, -3020.86349757 -703.591567823, -3020.86349757 -2523.59156782, -3020.86349757 -3803.59156782))"
			}
		)

CREATE (kitchen_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (kitchen_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (kitchen_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (kitchen_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (kitchen_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (kitchen_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (kitchen_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (kitchen_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)
		
CREATE (kitchen_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (kitchen_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Room 1

CREATE (room1:Space {
			type: ["NamedIndividual", "Space", "Bedroom", "FeatureOfInterest"],
			ifc_label: "IfcSpace_165",
			name: "Raum 1 1",
			room_number: "1",
			area: "18.6",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e04f",
			space_boundary: "POLYGON((-7550.86349757 5556.40843218, -7550.86349757 1656.40843218, -4960.86349757 1656.40843218, -2780.86349757 1656.40843218, -2780.86349757 2506.40843218, -2780.86349757 5556.40843218, -7550.86349757 5556.40843218))"
			}
		)

CREATE (room1_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (room1_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room1_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room1_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (room1_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room1_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (room1_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room1_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)

CREATE (room1_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (room1_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Room 2

CREATE (room2:Space {
			type: ["NamedIndividual", "Space", "Livingroom", "FeatureOfInterest"],
			ifc_label: "IfcSpace_215",
			name: "Raum 2 2",
			room_number: "2",
			area: "20.25",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e052",
			space_boundary: "POLYGON((-7550.86349757 5556.40843218, -7550.86349757 1656.40843218, -4960.86349757 1656.40843218, -2780.86349757 1656.40843218, -2780.86349757 2506.40843218, -2780.86349757 5556.40843218, -7550.86349757 5556.40843218))"
			
			}
		)

CREATE (room2_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (room2_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room2_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room2_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (room2_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room2_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (room2_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room2_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)

CREATE (room2_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (room2_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Room 3

CREATE (room3:Space {
			type: ["NamedIndividual", "Space", "Livingroom", "FeatureOfInterest"],
			ifc_label: "IfcSpace_407",
			name: "Raum 3 8",
			room_number: "8",
			area: "16.1",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e175",
			space_boundary: "POLYGON((3639.13650243 -3803.59156782, 3639.13650243 796.408432177, 139.136502427 796.408432177, 139.136502427 -470.581967823, 139.136502427 -623.591567823, 139.136502427 -3803.59156782, 3639.13650243 -3803.59156782))"
			}
		)

CREATE (room3_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (room3_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room3_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room3_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (room3_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room3_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (room3_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (room3_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)

CREATE (room3_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (room3_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Bathroom

CREATE (bathroom:Space {
			type: ["NamedIndividual", "Space", "Bathroom", "FeatureOfInterest"],
			ifc_label: "IfcSpace_247",
			name: "Bad 3",
			room_number: "3",
			area: "4.8",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e055",
			space_boundary: "POLYGON((-1020.86349757 5556.40843218, -2620.86349757 5556.40843218, -2620.86349757 2556.40843218, -1020.86349757 2556.40843218, -1020.86349757 5556.40843218))"
			}
		)

CREATE (bathroom_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (bathroom_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (bathroom_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (bathroom_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (bathroom_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (bathroom_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (bathroom_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (bathroom_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)

CREATE (bathroom_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (bathroom_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)

//////////////////////////////////////////////////////////////////////////////
// Toilet

CREATE (toilet:Space {
			type: ["NamedIndividual", "Space", "Bathroom", "FeatureOfInterest"],
			ifc_label: "IfcSpace_343",
			name: "Room 7",
			room_number: "7",
			area: "2.04",
			volume: "0",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e064",
			space_boundary: "POLYGON((-4880.86349757 -3803.59156782, -3180.86349757 -3803.59156782, -3180.86349757 -2603.59156782, -4880.86349757 -2603.59156782, -4880.86349757 -3803.59156782))"
			}
		)

CREATE (toilet_temp_sensor:Sensor {
			type:["NamedIndividual", "TemperatureSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "40.0",
			unitCode: "degreeCelcius"
			}
		)
			
CREATE (toilet_temp:Temperature {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (toilet_tempT:Thermostat {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (toilet_tempT_sensor:Sensor {
			type: ["NamedIndividual", "ThermostatTemperatureSensor", "Sensor"]
			}
		)

CREATE (toilet_humid:Humidity {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (toilet_humid_sensor:Sensor {
			type: ["NamedIndividual", "HumiditySensor", "Sensor"],
			minValue: "0.0",
			maxValue: "100.0",
			unitCode: "percent"
			}
		)

CREATE (toilet_brigh:Brightness {
			type: ["NamedIndividual", "ObservableProperty"]
			}
		)

CREATE (toilet_brigh_sensor:Sensor {
			type: ["NamedIndividual", "LightSensor", "Sensor"],
			minValue: "0.0",
			maxValue: "60000.0",
			unitCode: "lux"
			}
		)

CREATE (toilet_tempS:TemperatureSetpoint {
			type: ["NamedIndividual", "ActuableProperty"]
			}
		)

CREATE (toilet_tempS_actuator:Actuator {
			type: ["NamedIndividual", "ThermostaticRadiatorValve", "Actuator"]
			}
		)










//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////		
// Create relationships
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (site)-[:HAS_BUILDING]->(building)

CREATE (building)-[:HAS_STOREY]->(level1)
CREATE (building)-[:HAS_STOREY]->(level2)
CREATE (building)-[:HAS_SPACE]->(kitchen)
CREATE (building)-[:HAS_SPACE]->(lobby)
CREATE (building)-[:HAS_SPACE]->(room1)
CREATE (building)-[:HAS_SPACE]->(room2)
CREATE (building)-[:HAS_SPACE]->(room3)
CREATE (building)-[:HAS_SPACE]->(toilet)
CREATE (building)-[:HAS_SPACE]->(room_before_toilet)
CREATE (building)-[:HAS_SPACE]->(staircase)
CREATE (building)-[:HAS_SPACE]->(bathroom)

CREATE (level1)-[:HAS_SPACE]->(kitchen)
CREATE (level1)-[:HAS_SPACE]->(lobby)
CREATE (level1)-[:HAS_SPACE]->(room1)
CREATE (level1)-[:HAS_SPACE]->(room2)
CREATE (level1)-[:HAS_SPACE]->(room3)
CREATE (level1)-[:HAS_SPACE]->(toilet)
CREATE (level1)-[:HAS_SPACE]->(room_before_toilet)
CREATE (level1)-[:HAS_SPACE]->(staircase)
CREATE (level1)-[:HAS_SPACE]->(bathroom)

CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_temp_sensor)
CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_tempT_sensor)
CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_humid_sensor)
CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_brigh_sensor)
CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_tempS_sensor)
CREATE (kitchen)-[:CONTAINS_ELEMENT]->(kitchen_heater)
CREATE (kitchen)-[:HAS_PROPERTY]->(kitchen_temp)
CREATE (kitchen)-[:HAS_PROPERTY]->(kitchen_tempT)
CREATE (kitchen)-[:HAS_PROPERTY]->(kitchen_humid)
CREATE (kitchen)-[:HAS_PROPERTY]->(kitchen_brigh)
CREATE (kitchen)-[:HAS_PROPERTY]->(kitchen_tempS)
CREATE (kitchen_temp_sensor)-[:OBSERVES]->(kitchen_temp)
CREATE (kitchen_tempT_sensor)-[:OBSERVES]->(kitchen_tempT)
CREATE (kitchen_humid_sensor)-[:OBSERVES]->(kitchen_humid)
CREATE (kitchen_brigh_sensor)-[:OBSERVES]->(kitchen_brigh)
CREATE (kitchen_tempS_actuator)-[:FOR_PROPERTY]->(kitchen_tempS)

CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_temp_sensor)
CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_tempT_sensor)
CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_humid_sensor)
CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_brigh_sensor)
CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_tempS_sensor)
CREATE (room1)-[:CONTAINS_ELEMENT]->(room1_heater:Heater)
CREATE (room1)-[:HAS_PROPERTY]->(room1_temp)
CREATE (room1)-[:HAS_PROPERTY]->(room1_tempT)
CREATE (room1)-[:HAS_PROPERTY]->(room1_humid)
CREATE (room1)-[:HAS_PROPERTY]->(room1_brigh)
CREATE (room1)-[:HAS_PROPERTY]->(room1_tempS)
CREATE (room1_temp_sensor)-[:OBSERVES]->(room1_temp)
CREATE (room1_tempT_sensor)-[:OBSERVES]->(room1_tempT)
CREATE (room1_humid_sensor)-[:OBSERVES]->(room1_humid)
CREATE (room1_brigh_sensor)-[:OBSERVES]->(room1_brigh)
CREATE (room1_tempS_actuator)-[:FOR_PROPERTY]->(room1_tempS)

CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_temp_sensor)
CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_tempT_sensor)
CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_humid_sensor)
CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_brigh_sensor)
CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_tempS_sensor)
CREATE (room2)-[:CONTAINS_ELEMENT]->(room2_heater:Heater)
CREATE (room2)-[:HAS_PROPERTY]->(room2_temp)
CREATE (room2)-[:HAS_PROPERTY]->(room2_tempT)
CREATE (room2)-[:HAS_PROPERTY]->(room2_humid)
CREATE (room2)-[:HAS_PROPERTY]->(room2_brigh)
CREATE (room2)-[:HAS_PROPERTY]->(room2_tempS)
CREATE (room2_temp_sensor)-[:OBSERVES]->(room2_temp)
CREATE (room2_tempT_sensor)-[:OBSERVES]->(room2_tempT)
CREATE (room2_humid_sensor)-[:OBSERVES]->(room2_humid)
CREATE (room2_brigh_sensor)-[:OBSERVES]->(room2_brigh)
CREATE (room2_tempS_actuator)-[:FOR_PROPERTY]->(room2_tempS)

CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_temp_sensor)
CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_tempT_sensor)
CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_humid_sensor)
CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_brigh_sensor)
CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_tempS_sensor)
CREATE (room3)-[:CONTAINS_ELEMENT]->(room3_heater:Heater)
CREATE (room3)-[:HAS_PROPERTY]->(room3_temp)
CREATE (room3)-[:HAS_PROPERTY]->(room3_tempT)
CREATE (room3)-[:HAS_PROPERTY]->(room3_humid)
CREATE (room3)-[:HAS_PROPERTY]->(room3_brigh)
CREATE (room3)-[:HAS_PROPERTY]->(room3_tempS)
CREATE (room3_temp_sensor)-[:OBSERVES]->(room3_temp)
CREATE (room3_tempT_sensor)-[:OBSERVES]->(room3_tempT)
CREATE (room3_humid_sensor)-[:OBSERVES]->(room3_humid)
CREATE (room3_brigh_sensor)-[:OBSERVES]->(room3_brigh)
CREATE (room3_tempS_actuator)-[:FOR_PROPERTY]->(room3_tempS)

CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_temp_sensor)
CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_tempT_sensor)
CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_humid_sensor)
CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_brigh_sensor)
CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_tempS_sensor)
CREATE (bathroom)-[:CONTAINS_ELEMENT]->(bathroom_heater:Heater)
CREATE (bathroom)-[:HAS_PROPERTY]->(bathroom_temp)
CREATE (bathroom)-[:HAS_PROPERTY]->(bathroom_tempT)
CREATE (bathroom)-[:HAS_PROPERTY]->(bathroom_humid)
CREATE (bathroom)-[:HAS_PROPERTY]->(bathroom_brigh)
CREATE (bathroom)-[:HAS_PROPERTY]->(bathroom_tempS)
CREATE (bathroom_temp_sensor)-[:OBSERVES]->(bathroom_temp)
CREATE (bathroom_tempT_sensor)-[:OBSERVES]->(bathroom_tempT)
CREATE (bathroom_humid_sensor)-[:OBSERVES]->(bathroom_humid)
CREATE (bathroom_brigh_sensor)-[:OBSERVES]->(bathroom_brigh)
CREATE (bathroom_tempS_actuator)-[:FOR_PROPERTY]->(bathroom_tempS)

CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_temp_sensor)
CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_tempT_sensor)
CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_humid_sensor)
CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_brigh_sensor)
CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_tempS_sensor)
CREATE (toilet)-[:CONTAINS_ELEMENT]->(toilet_heater:Heater)
CREATE (toilet)-[:HAS_PROPERTY]->(toilet_temp)
CREATE (toilet)-[:HAS_PROPERTY]->(toilet_tempT)
CREATE (toilet)-[:HAS_PROPERTY]->(toilet_humid)
CREATE (toilet)-[:HAS_PROPERTY]->(toilet_brigh)
CREATE (toilet)-[:HAS_PROPERTY]->(toilet_tempS)
CREATE (toilet_temp_sensor)-[:OBSERVES]->(toilet_temp)
CREATE (toilet_tempT_sensor)-[:OBSERVES]->(toilet_tempT)
CREATE (toilet_humid_sensor)-[:OBSERVES]->(toilet_humid)
CREATE (toilet_brigh_sensor)-[:OBSERVES]->(toilet_brigh)
CREATE (toilet_tempS_actuator)-[:FOR_PROPERTY]->(toilet_tempS)










//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////		
// Create walls
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (wall1:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "9620",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004d8eb"
			}
		)

CREATE (wall2:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "11450",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004d93d"
			}
		)	

CREATE (wall3:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "9620",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004d96f"
			}
		)	

CREATE (wall4:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "11450",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004d9a0"
			}
		)	

CREATE (wall5:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "4980",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004da28"
			}
		)	

CREATE (wall6:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "4160",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004da52"
			}
		)

CREATE (wall7:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "3180",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004dae1"
			}
		)

CREATE (wall8:Wall {
			type: "Element",
			name: "Generic - 100mm",
			width: "100",
			length: "1810",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004db10"
			}
		)

CREATE (wall9:Wall {
			type: "Element",
			name: "Generic - 260mm",
			width: "260",
			length: "4660",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004db64"
			}
		)

CREATE (wall10:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "3310",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004dbc4"
			}
		)

CREATE (wall11:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "5020",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004dc15"
			}
		)

CREATE (wall12:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "5460",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004dc66"
			}
		)

CREATE (wall13:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "3310",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004dcc3"
			}
		)

CREATE (wall14:Wall {
			type: "Element",
			name: "Generic - 60mm",
			width: "60",
			length: "1580",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004de3e"
			}
		)

CREATE (wall15:Wall {
			type: "Element",
			name: "Generic - 160mm",
			width: "160",
			length: "1860",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e027"
			}
		)










//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////		
// Create windows
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (window1:Window {
			type: "Element",
			name: "1600 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004e962"
			}
		)

CREATE (window2:Window {
			type: "Element",
			name: "0700 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004e9d3"
			}
		)

CREATE (window3:Window {
			type: "Element",
			name: "1900 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004ea0d"
			}
		)

CREATE (window4:Window {
			type: "Element",
			name: "1600 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004eab4"
			}
		)

CREATE (window5:Window {
			type: "Element",
			name: "1600 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004eb0d"
			}
		)

CREATE (window6:Window {
			type: "Element",
			name: "1600 x 1100mm", 
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004eb9e"
			}
		)

CREATE (window7:Window {
			type: "Element",
			name: "0700 x 1100mm",
			revit_guid: "52a273d7-fd5d-4d87-b824-a5c3f59901cc-0004ebd8"
			}
		)










//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////		
// Create doors
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (door1:Door {
			type: "Element",
			name: "0915 x 2134mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e1d4"
			}
		)

CREATE (door2:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e271"
			}
		)

CREATE (door3:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e345"
			}
		)

CREATE (door4:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e3d9"
			}
		)

CREATE (door5:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e7b4"
			}
		)

CREATE (door6:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e823"
			}
		)

CREATE (door7:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e84d"
			}
		)

CREATE (door8:Door {
			type: "Element",
			name: "0762 x 2032mm",
			revit_guid: "05b047f8-dd03-4cd9-a50c-d5d18c6f7ab7-0004e897"
			}
		)











//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////		
// Create relationships between elements
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

CREATE (wall12)-[:HOSTS_ELEMENT]->(door1)
CREATE (wall6)-[:HOSTS_ELEMENT]->(door2)
CREATE (wall10)-[:HOSTS_ELEMENT]->(door3)
CREATE (wall9)-[:HOSTS_ELEMENT]->(door4)
CREATE (wall11)-[:HOSTS_ELEMENT]->(door5)
CREATE (wall10)-[:HOSTS_ELEMENT]->(door6)
CREATE (wall15)-[:HOSTS_ELEMENT]->(door7)
CREATE (wall11)-[:HOSTS_ELEMENT]->(door8)

CREATE (wall2)-[:HOSTS_ELEMENT]->(window1)
CREATE (wall2)-[:HOSTS_ELEMENT]->(window2)
CREATE (wall2)-[:HOSTS_ELEMENT]->(window3)
CREATE (wall3)-[:HOSTS_ELEMENT]->(window4)
CREATE (wall4)-[:HOSTS_ELEMENT]->(window5)
CREATE (wall4)-[:HOSTS_ELEMENT]->(window6)
CREATE (wall4)-[:HOSTS_ELEMENT]->(window7)

//////////////////////////////////////////////////////////////////////////////
// Walls to rooms

CREATE (room1)-[:ADJACENT_ELEMENT]->(wall1)
CREATE (room1)-[:ADJACENT_ELEMENT]->(wall5)
CREATE (room1)-[:ADJACENT_ELEMENT]->(wall6)
CREATE (room1)-[:ADJACENT_ELEMENT]->(wall2)

CREATE (room2)-[:ADJACENT_ELEMENT]->(wall2)
CREATE (room2)-[:ADJACENT_ELEMENT]->(wall7)
CREATE (room2)-[:ADJACENT_ELEMENT]->(wall14)
CREATE (room2)-[:ADJACENT_ELEMENT]->(wall9)
CREATE (room2)-[:ADJACENT_ELEMENT]->(wall3)

CREATE (bathroom)-[:ADJACENT_ELEMENT]->(wall2)
CREATE (bathroom)-[:ADJACENT_ELEMENT]->(wall6)
CREATE (bathroom)-[:ADJACENT_ELEMENT]->(wall8)
CREATE (bathroom)-[:ADJACENT_ELEMENT]->(wall7)

CREATE (staircase)-[:ADJACENT_ELEMENT]->(wall1)
CREATE (staircase)-[:ADJACENT_ELEMENT]->(wall4)
CREATE (staircase)-[:ADJACENT_ELEMENT]->(wall12)
CREATE (staircase)-[:ADJACENT_ELEMENT]->(wall5)

CREATE (kitchen)-[:ADJACENT_ELEMENT]->(wall4)
CREATE (kitchen)-[:ADJACENT_ELEMENT]->(wall10)
CREATE (kitchen)-[:ADJACENT_ELEMENT]->(wall11)
CREATE (kitchen)-[:ADJACENT_ELEMENT]->(wall13)

CREATE (room_before_toilet)-[:ADJACENT_ELEMENT]->(wall11)
CREATE (room_before_toilet)-[:ADJACENT_ELEMENT]->(wall12)
CREATE (room_before_toilet)-[:ADJACENT_ELEMENT]->(wall15)
CREATE (room_before_toilet)-[:ADJACENT_ELEMENT]->(wall13)

CREATE (toilet)-[:ADJACENT_ELEMENT]->(wall4)
CREATE (toilet)-[:ADJACENT_ELEMENT]->(wall13)
CREATE (toilet)-[:ADJACENT_ELEMENT]->(wall15)
CREATE (toilet)-[:ADJACENT_ELEMENT]->(wall12)

CREATE (room3)-[:ADJACENT_ELEMENT]->(wall3)
CREATE (room3)-[:ADJACENT_ELEMENT]->(wall9)
CREATE (room3)-[:ADJACENT_ELEMENT]->(wall10)
CREATE (room3)-[:ADJACENT_ELEMENT]->(wall4)

CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall5)
CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall12)
CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall11)
CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall14)
CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall8)
CREATE (lobby)-[:ADJACENT_ELEMENT]->(wall6)
