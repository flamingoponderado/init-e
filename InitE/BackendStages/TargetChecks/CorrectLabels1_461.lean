import InitE.BackendStages.TargetChecks.CorrectData1_461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_461_eq : LabToTarget.sectionLabels 319020 Reencode0_461.lines [] = (331568, localLabels1_461) := by
  with_unfolding_all rfl
#print axioms localLabels1_461_eq
end InitE.BackendStages.TargetChecks.Correct
