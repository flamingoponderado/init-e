import InitE.BackendStages.TargetChecks.CorrectData1_80
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_80_eq : LabToTarget.sectionLabels 9620 Reencode0_80.lines [] = (9704, localLabels1_80) := by
  with_unfolding_all rfl
#print axioms localLabels1_80_eq
end InitE.BackendStages.TargetChecks.Correct
