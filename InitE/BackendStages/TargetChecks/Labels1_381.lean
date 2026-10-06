import InitE.BackendStages.TargetChecks.Data1_381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_381_eq : LabToTarget.sectionLabels 262388 Reencode0_381.lines [] = (263212, localLabels1_381) := by
  with_unfolding_all rfl
#print axioms localLabels1_381_eq
end InitE.BackendStages.TargetChecks
