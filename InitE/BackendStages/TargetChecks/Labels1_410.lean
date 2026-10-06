import InitE.BackendStages.TargetChecks.Data1_410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_410_eq : LabToTarget.sectionLabels 280864 Reencode0_410.lines [] = (281920, localLabels1_410) := by
  with_unfolding_all rfl
#print axioms localLabels1_410_eq
end InitE.BackendStages.TargetChecks
