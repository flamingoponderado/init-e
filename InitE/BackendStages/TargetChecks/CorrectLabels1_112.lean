import InitE.BackendStages.TargetChecks.CorrectData1_112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_112_eq : LabToTarget.sectionLabels 13988 Reencode0_112.lines [] = (14016, localLabels1_112) := by
  with_unfolding_all rfl
#print axioms localLabels1_112_eq
end InitE.BackendStages.TargetChecks.Correct
