import InitE.BackendStages.TargetChecks.CorrectData0_590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_590_eq : LabToTarget.sectionLabels 433080 Initial590.lines [] = (435852, localLabels0_590) := by
  with_unfolding_all rfl
#print axioms localLabels0_590_eq
end InitE.BackendStages.TargetChecks.Correct
