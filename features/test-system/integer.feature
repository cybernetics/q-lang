Feature: TestSystem.Integer

  Background:
    Given the type under test is Integer

  Scenario: Against an integer

    Given I dress JSON's '12'
    Then the result should be a representation for Integer
    And  the result should be the integer 12

  Scenario: Against a real

    Given I dress JSON's '12.5'
    Then it should be a TypeError as:
      | message                          |
      | Invalid value `12.5` for Integer |

  Scenario: Against an integer literal

    Given I dress JSON's '"12"'
    Then it should be a TypeError as:
      | message                        |
      | Invalid value `12` for Integer |

  Scenario: Against null

    Given I dress JSON's 'null'
    Then it should be a TypeError as:
      | message                          |
      | Invalid value `null` for Integer |

  Scenario: Against an arbitrary value

    Given I dress JSON's '"foo"'
    Then it should be a TypeError as:
      | message                          |
      | Invalid value `foo` for Integer  |
