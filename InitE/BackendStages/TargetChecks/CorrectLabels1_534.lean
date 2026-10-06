import InitE.BackendStages.TargetChecks.CorrectData1_534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_534_eq : LabToTarget.sectionLabels 378456 Reencode0_534.lines [] = (379340, localLabels1_534) := by
  with_unfolding_all rfl
#print axioms localLabels1_534_eq
end InitE.BackendStages.TargetChecks.Correct
