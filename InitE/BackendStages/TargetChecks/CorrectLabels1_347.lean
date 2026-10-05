import InitE.BackendStages.TargetChecks.CorrectData1_347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_347_eq : LabToTarget.sectionLabels 240328 Reencode0_347.lines [] = (245416, localLabels1_347) := by
  with_unfolding_all rfl
#print axioms localLabels1_347_eq
end InitE.BackendStages.TargetChecks.Correct
