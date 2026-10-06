import InitE.BackendStages.TargetChecks.CorrectData1_218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_218_eq : LabToTarget.sectionLabels 81892 Reencode0_218.lines [] = (81944, localLabels1_218) := by
  with_unfolding_all rfl
#print axioms localLabels1_218_eq
end InitE.BackendStages.TargetChecks.Correct
