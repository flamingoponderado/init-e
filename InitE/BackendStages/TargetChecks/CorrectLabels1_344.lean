import InitE.BackendStages.TargetChecks.CorrectData1_344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_344_eq : LabToTarget.sectionLabels 235516 Reencode0_344.lines [] = (237668, localLabels1_344) := by
  with_unfolding_all rfl
#print axioms localLabels1_344_eq
end InitE.BackendStages.TargetChecks.Correct
