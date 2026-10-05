import InitE.BackendStages.TargetChecks.CorrectData0_862
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_862_eq : LabToTarget.sectionLabels 936784 Initial862.lines [] = (945708, localLabels0_862) := by
  with_unfolding_all rfl
#print axioms localLabels0_862_eq
end InitE.BackendStages.TargetChecks.Correct
