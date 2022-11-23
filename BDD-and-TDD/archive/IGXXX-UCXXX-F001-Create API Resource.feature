# The 'business stakeholders' for the canvas Behaviour Driven Design are the Engineering teams
# from the Vendor of a component, from a Systems Integrator who may be integrating and deploying 
# a component, or a Service Provider's Operations team who may be supporting a component.

Feature: IGXXX-UCXXX-F001-Create API Resource

    Scenario: Create API Resource for Core API
        Given An example component helm chart 'productcatalog' with at least '1' API in its 'coreFunction' segment
        When I install the 'productcatalog' component helm chart
        Then I should see the 'productcatalogmanagement' API resource

    Scenario: Create API Resource for Management API
        Given An example component helm chart 'productcatalog' with at least one API in its 'management' segment
        When I install the 'productcatalog' component helm chart
        Then I should see the 'metrics' API resource

    Scenario: Create API Resource for Security API
        Given An example component helm chart 'productcatalog' with at least one API in its 'security' segment
        When I install the 'productcatalog' component helm chart
        Then I should see the 'partyrole' API resource



