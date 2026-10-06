import InitE.BackendStages.TargetChecks.CorrectData1_375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_375_eq : LabToTarget.sectionLabels 257768 Reencode0_375.lines [] = (257792, localLabels1_375) := by
  with_unfolding_all rfl
#print axioms localLabels1_375_eq
end InitE.BackendStages.TargetChecks.Correct
