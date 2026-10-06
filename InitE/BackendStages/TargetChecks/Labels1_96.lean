import InitE.BackendStages.TargetChecks.Data1_96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_96_eq : LabToTarget.sectionLabels 12144 Reencode0_96.lines [] = (12312, localLabels1_96) := by
  with_unfolding_all rfl
#print axioms localLabels1_96_eq
end InitE.BackendStages.TargetChecks
