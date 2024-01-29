The `stack` within the stack file configuration refers to the MLOps stack intended for deployment. This `stack` consists of several layers, each aligning with different stages of the MLOps project lifecycle. Some key layers include:

- `data_versioning`: For dataset version control.
- `experiment_tracker`: To monitor project metadata.
- `orchestrator`: To manage data processing, model training, and hyperparameter tuning tasks.
- `model_registry`: For tracking and versioning models generated by the orchestrator.

Each layer plays a pivotal role in the streamlined execution and management of MLOps processes.

A sample `stack` block can look as follows:
=== "Simple Deployment Configuration"
    ```yaml title="Minimal kubernetes based stack for lakefs"
    --8<-- "docs/examples/kubernetes/lakefs/aws-lakefs.yaml:8:10"
    ```
=== "Advanced Deployment Configuration"
    ```yaml title="Advanced kubernetes based stack for lakefs with many layers of configuration"
    --8<-- "docs/examples/kubernetes/lakefs/aws-lakefs-advanced.yaml:27:36"
    ```

`platinfra` is designed to integrate a multitude of stacks, aiming to simplify the deployment process to a mere button click.


!!! info
    `platinfra` is under active development and some of the stacks might not be available across all `providers` and/or `deployment`. Please keep an eye on the issue tracker and roadmap for more details.