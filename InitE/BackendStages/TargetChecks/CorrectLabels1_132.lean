import InitE.BackendStages.TargetChecks.CorrectData1_132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_132_eq : LabToTarget.sectionLabels 26728 Reencode0_132.lines [] = (26760, localLabels1_132) := by
  with_unfolding_all rfl
#print axioms localLabels1_132_eq
end InitE.BackendStages.TargetChecks.Correct
