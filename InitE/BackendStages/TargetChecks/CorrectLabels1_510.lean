import InitE.BackendStages.TargetChecks.CorrectData1_510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_510_eq : LabToTarget.sectionLabels 358472 Reencode0_510.lines [] = (359344, localLabels1_510) := by
  with_unfolding_all rfl
#print axioms localLabels1_510_eq
end InitE.BackendStages.TargetChecks.Correct
