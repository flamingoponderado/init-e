import InitE.BackendStages.TargetChecks.Data1_203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_203_eq : LabToTarget.sectionLabels 71596 Reencode0_203.lines [] = (71756, localLabels1_203) := by
  with_unfolding_all rfl
#print axioms localLabels1_203_eq
end InitE.BackendStages.TargetChecks
