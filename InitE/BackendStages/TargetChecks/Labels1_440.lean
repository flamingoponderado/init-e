import InitE.BackendStages.TargetChecks.Data1_440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_440_eq : LabToTarget.sectionLabels 299728 Reencode0_440.lines [] = (300380, localLabels1_440) := by
  with_unfolding_all rfl
#print axioms localLabels1_440_eq
end InitE.BackendStages.TargetChecks
