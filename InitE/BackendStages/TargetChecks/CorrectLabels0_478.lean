import InitE.BackendStages.TargetChecks.CorrectData0_478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_478_eq : LabToTarget.sectionLabels 338452 Initial478.lines [] = (339092, localLabels0_478) := by
  with_unfolding_all rfl
#print axioms localLabels0_478_eq
end InitE.BackendStages.TargetChecks.Correct
