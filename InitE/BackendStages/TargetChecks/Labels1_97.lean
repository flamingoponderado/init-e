import InitE.BackendStages.TargetChecks.Data1_97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_97_eq : LabToTarget.sectionLabels 12312 Reencode0_97.lines [] = (12376, localLabels1_97) := by
  with_unfolding_all rfl
#print axioms localLabels1_97_eq
end InitE.BackendStages.TargetChecks
