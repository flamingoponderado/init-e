import InitE.BackendStages.TargetChecks.CorrectData1_209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_209_eq : LabToTarget.sectionLabels 73620 Reencode0_209.lines [] = (73632, localLabels1_209) := by
  with_unfolding_all rfl
#print axioms localLabels1_209_eq
end InitE.BackendStages.TargetChecks.Correct
