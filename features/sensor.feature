Feature: Sensor config

  Scenario: Creating a new sensor
    When I create the following sensor:
      | Label                     | CalneAQM005-A3a |
      | Model                     | Design A3a      |
      | Node ID                   | 6719832         |
      | PM Sensor ID              | 55678           |
      | Temp RH Sensor ID         | 55679           |
      | Community Registration ID | 29869           |
    Then I should have the following sensors:
      | label           | model      | node_id | pm_sensor_id | temp_rh_sensor_id | community_registration_id | active |
      | CalneAQM005-A3a | Design A3a | 6719832 | 55678        | 55679             | 29869                     | true   |
