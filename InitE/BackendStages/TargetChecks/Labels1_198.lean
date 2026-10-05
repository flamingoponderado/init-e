import InitE.BackendStages.TargetChecks.Data1_198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_198_eq : LabToTarget.sectionLabels 66812 Reencode0_198.lines [] = (68804, localLabels1_198) := by
  with_unfolding_all rfl
#print axioms localLabels1_198_eq
end InitE.BackendStages.TargetChecks
