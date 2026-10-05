import InitE.BackendStages.TargetChecks.CorrectData1_582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_582_eq : LabToTarget.sectionLabels 423924 Reencode0_582.lines [] = (424472, localLabels1_582) := by
  with_unfolding_all rfl
#print axioms localLabels1_582_eq
end InitE.BackendStages.TargetChecks.Correct
