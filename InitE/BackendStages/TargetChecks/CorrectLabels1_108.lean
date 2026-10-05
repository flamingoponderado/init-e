import InitE.BackendStages.TargetChecks.CorrectData1_108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_108_eq : LabToTarget.sectionLabels 13316 Reencode0_108.lines [] = (13448, localLabels1_108) := by
  with_unfolding_all rfl
#print axioms localLabels1_108_eq
end InitE.BackendStages.TargetChecks.Correct
