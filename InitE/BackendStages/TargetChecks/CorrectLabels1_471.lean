import InitE.BackendStages.TargetChecks.CorrectData1_471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_471_eq : LabToTarget.sectionLabels 337412 Reencode0_471.lines [] = (337472, localLabels1_471) := by
  with_unfolding_all rfl
#print axioms localLabels1_471_eq
end InitE.BackendStages.TargetChecks.Correct
