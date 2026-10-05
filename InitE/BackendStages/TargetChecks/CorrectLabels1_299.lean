import InitE.BackendStages.TargetChecks.CorrectData1_299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_299_eq : LabToTarget.sectionLabels 196760 Reencode0_299.lines [] = (197044, localLabels1_299) := by
  with_unfolding_all rfl
#print axioms localLabels1_299_eq
end InitE.BackendStages.TargetChecks.Correct
