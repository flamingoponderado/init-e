import InitE.BackendStages.TargetChecks.CorrectData1_311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_311_eq : LabToTarget.sectionLabels 207248 Reencode0_311.lines [] = (207448, localLabels1_311) := by
  with_unfolding_all rfl
#print axioms localLabels1_311_eq
end InitE.BackendStages.TargetChecks.Correct
