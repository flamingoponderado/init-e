import InitE.BackendStages.TargetChecks.Data1_584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_584_eq : LabToTarget.sectionLabels 425020 Reencode0_584.lines [] = (425700, localLabels1_584) := by
  with_unfolding_all rfl
#print axioms localLabels1_584_eq
end InitE.BackendStages.TargetChecks
