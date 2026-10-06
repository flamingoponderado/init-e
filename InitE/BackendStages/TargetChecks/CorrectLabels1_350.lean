import InitE.BackendStages.TargetChecks.CorrectData1_350
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_350_eq : LabToTarget.sectionLabels 245632 Reencode0_350.lines [] = (245664, localLabels1_350) := by
  with_unfolding_all rfl
#print axioms localLabels1_350_eq
end InitE.BackendStages.TargetChecks.Correct
