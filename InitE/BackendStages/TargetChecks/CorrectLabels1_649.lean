import InitE.BackendStages.TargetChecks.CorrectData1_649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_649_eq : LabToTarget.sectionLabels 554972 Reencode0_649.lines [] = (555092, localLabels1_649) := by
  with_unfolding_all rfl
#print axioms localLabels1_649_eq
end InitE.BackendStages.TargetChecks.Correct
