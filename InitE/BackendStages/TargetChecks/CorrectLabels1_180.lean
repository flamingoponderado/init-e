import InitE.BackendStages.TargetChecks.CorrectData1_180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_180_eq : LabToTarget.sectionLabels 55124 Reencode0_180.lines [] = (55136, localLabels1_180) := by
  with_unfolding_all rfl
#print axioms localLabels1_180_eq
end InitE.BackendStages.TargetChecks.Correct
