import InitE.BackendStages.TargetChecks.Data1_519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_519_eq : LabToTarget.sectionLabels 365816 Reencode0_519.lines [] = (366408, localLabels1_519) := by
  with_unfolding_all rfl
#print axioms localLabels1_519_eq
end InitE.BackendStages.TargetChecks
