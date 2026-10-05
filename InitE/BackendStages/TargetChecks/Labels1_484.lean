import InitE.BackendStages.TargetChecks.Data1_484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_484_eq : LabToTarget.sectionLabels 342120 Reencode0_484.lines [] = (342868, localLabels1_484) := by
  with_unfolding_all rfl
#print axioms localLabels1_484_eq
end InitE.BackendStages.TargetChecks
