import InitE.BackendStages.TargetChecks.CorrectData1_472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_472_eq : LabToTarget.sectionLabels 337472 Reencode0_472.lines [] = (337568, localLabels1_472) := by
  with_unfolding_all rfl
#print axioms localLabels1_472_eq
end InitE.BackendStages.TargetChecks.Correct
