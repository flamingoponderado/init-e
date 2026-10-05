import InitE.BackendStages.TargetChecks.Data1_463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_463_eq : LabToTarget.sectionLabels 334872 Reencode0_463.lines [] = (336084, localLabels1_463) := by
  with_unfolding_all rfl
#print axioms localLabels1_463_eq
end InitE.BackendStages.TargetChecks
