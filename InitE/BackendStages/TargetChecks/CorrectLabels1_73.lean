import InitE.BackendStages.TargetChecks.CorrectData1_73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_73_eq : LabToTarget.sectionLabels 7076 Reencode0_73.lines [] = (7112, localLabels1_73) := by
  with_unfolding_all rfl
#print axioms localLabels1_73_eq
end InitE.BackendStages.TargetChecks.Correct
