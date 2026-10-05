import InitE.BackendStages.TargetChecks.Data1_812
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_812_eq : LabToTarget.sectionLabels 852776 Reencode0_812.lines [] = (856332, localLabels1_812) := by
  with_unfolding_all rfl
#print axioms localLabels1_812_eq
end InitE.BackendStages.TargetChecks
