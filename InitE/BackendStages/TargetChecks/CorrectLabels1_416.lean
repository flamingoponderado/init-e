import InitE.BackendStages.TargetChecks.CorrectData1_416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_416_eq : LabToTarget.sectionLabels 284620 Reencode0_416.lines [] = (285360, localLabels1_416) := by
  with_unfolding_all rfl
#print axioms localLabels1_416_eq
end InitE.BackendStages.TargetChecks.Correct
