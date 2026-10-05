import InitE.BackendStages.TargetChecks.CorrectData1_734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_734_eq : LabToTarget.sectionLabels 722412 Reencode0_734.lines [] = (722876, localLabels1_734) := by
  with_unfolding_all rfl
#print axioms localLabels1_734_eq
end InitE.BackendStages.TargetChecks.Correct
