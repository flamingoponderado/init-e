import InitE.BackendStages.TargetChecks.Data1_707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_707_eq : LabToTarget.sectionLabels 666088 Reencode0_707.lines [] = (667604, localLabels1_707) := by
  with_unfolding_all rfl
#print axioms localLabels1_707_eq
end InitE.BackendStages.TargetChecks
