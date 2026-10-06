import InitE.BackendStages.TargetChecks.CorrectData1_590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_590_eq : LabToTarget.sectionLabels 433080 Reencode0_590.lines [] = (435852, localLabels1_590) := by
  with_unfolding_all rfl
#print axioms localLabels1_590_eq
end InitE.BackendStages.TargetChecks.Correct
