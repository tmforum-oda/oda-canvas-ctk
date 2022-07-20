# ODA Canvas - use-case library

This folder contains a complete use-case library that defines the interactions between a generic ODA Component and the ODA Canvas.

For each operator in the ODA canvas, we identify a set of use-cases that cover all the interactions with an ODA Component.

## ODA Operators

This is a list of the Canvas operators (including status of whether this has been tested in the Canvas referernce implementation).

| Operator            | Description                     |
| ------------------- | ------------------------------- |
| API Gateway | Provides security, throttling and other non-functional services to allow API endpoints to be exposed to external consumers |
| Load Balancing | Load balances traffic onto component micro-services |
| License Manager | Audits compliance of component usage against licensing agreements |
| Service Mesh | Manages control-plane for service to service communications. Also provides data for observability. |
| Identity | Provides identity management to grant system and user access to components. |
| Observability | Captures observability data and allows alarming, tracing and root-cause analysis of issues. |
| Event Hub | Enables components to publish and subscribe to asynchronous events |


## Use-case list

| use-case           | Description           |
| ------------------ | --------------------- |
| Bootstrap role for component | When a new instance of a component is deployed or deleted, integrate with the Canvas Identity service and bootstrap the initial role and clean-up the bootstraped role. |
| Configure APIs for Component | When a component is deployed, updated or deleted, integrate with the Service Mesh & API Gateway to configure the API Endpoints |
| Configure Observability | When a component is deployed, updated or deleted, configure the observability service. || Authentication | When an external consumer calls an exposed API for a component, manage the authenticate the consumer and pass the authenticated request (including authentication token) to the component. |
