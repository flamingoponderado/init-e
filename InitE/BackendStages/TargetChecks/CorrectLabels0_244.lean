import InitE.BackendStages.TargetChecks.CorrectData0_244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_244_eq : LabToTarget.sectionLabels 135900 Initial244.lines [] = (136216, localLabels0_244) := by
  with_unfolding_all rfl
#print axioms localLabels0_244_eq
end InitE.BackendStages.TargetChecks.Correct
