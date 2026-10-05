import InitE.BackendStages.TargetChecks.Data1_211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_211_eq : LabToTarget.sectionLabels 73660 Reencode0_211.lines [] = (75984, localLabels1_211) := by
  with_unfolding_all rfl
#print axioms localLabels1_211_eq
end InitE.BackendStages.TargetChecks
