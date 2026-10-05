import InitE.BackendStages.TargetChecks.Data1_646
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_646_eq : LabToTarget.sectionLabels 542312 Reencode0_646.lines [] = (549444, localLabels1_646) := by
  with_unfolding_all rfl
#print axioms localLabels1_646_eq
end InitE.BackendStages.TargetChecks
